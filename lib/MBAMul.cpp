#include "MBAMul.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Pass.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

PreservedAnalyses MBAMulPass::run(Function &F, FunctionAnalysisManager &AM) {
    bool modified = false;
    std::vector<Instruction*> instructionsToReplace;

    for (auto &B : F) {
        for (auto &I : B) {
            if (auto *MulInst = dyn_cast<BinaryOperator>(&I)) {
                if (MulInst->getOpcode() == Instruction::Mul) {
                    // Check if one of the operands is the constant integer 2
                    if (auto *ConstInt = dyn_cast<ConstantInt>(MulInst->getOperand(1))) {
                        if (ConstInt->getZExtValue() == 2) {
                            instructionsToReplace.push_back(MulInst);
                        }
                    } else if (auto *ConstInt = dyn_cast<ConstantInt>(MulInst->getOperand(0))) {
                        if (ConstInt->getZExtValue() == 2) {
                            instructionsToReplace.push_back(MulInst);
                        }
                    }
                }
            }
        }
    }

    for (auto *MulInst : instructionsToReplace) {
        Value *OtherOp = MulInst->getOperand(0);
        if (auto *ConstInt = dyn_cast<ConstantInt>(MulInst->getOperand(0))) {
            if (ConstInt->getZExtValue() == 2) {
                OtherOp = MulInst->getOperand(1);
            }
        }
        Value *NewAdd = BinaryOperator::Create(Instruction::Add, OtherOp, OtherOp, "addtmp", MulInst);
        MulInst->replaceAllUsesWith(NewAdd);
        MulInst->eraseFromParent();
        modified = true;
    }

    return modified ? PreservedAnalyses::none() : PreservedAnalyses::all();
}

llvm::PassPluginLibraryInfo getMBAMulPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "MBAMulPass", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                    [](StringRef Name, FunctionPassManager &FPM,
                       ArrayRef<PassBuilder::PipelineElement>) {
                        if (Name == "mbamul") {
                            FPM.addPass(MBAMulPass());
                            return true;
                        }
                        return false;
                    });
            }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getMBAMulPluginInfo();
}
