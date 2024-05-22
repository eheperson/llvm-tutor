#ifndef LLVM_TUTOR_MBAMUL_H
#define LLVM_TUTOR_MBAMUL_H

#include "llvm/IR/PassManager.h"

namespace llvm {
class MBAMulPass : public PassInfoMixin<MBAMulPass> {
public:
    PreservedAnalyses run(Function &F, FunctionAnalysisManager &AM);
};
} // namespace llvm

#endif // LLVM_TUTOR_MBAMUL_H
