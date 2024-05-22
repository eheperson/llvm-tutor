llvm-tutor
=========
# LLVM Pass: Replace Integer Multiplication by 2 with Addition

Here is the original project link: https://github.com/banach-space/llvm-tutor
Visit the link to see how to prepare the test and development environment

This fork is used to write an LLVM pass that performs a transformation on LLVM IR code.
The task is to replace all instances of integer multiplication by 2 with addition by itself. 
For example, the expression "x = y * 2;" should be transformed to "x = y + y;". 
The pass should modify the LLVM IR code accordingly and generate the optimized output.


# Changed/Added files
- ./lib/MBAMul.cpp
- ./include/MBAMul.h
- ./test/Test_MBAMul.cpp
- ./test/test_mul_by_2.cpp
- ./test/MBA_MUL.ll
- ./test/output.ll
- ./test/output.ll
- ./test/test.ll

# Prepare

 Install and prepare the llvm
```bash
brew install llvm@18
#or 
brew upgrade llvm
export LLVM_DIR=/opt/homebrew/opt/llvm/
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
```

Install the project with new added `MBAMul` pass.
```bash
cd llvm-tutor
mkdir build
cd build
cmake -DLT_LLVM_INSTALL_DIR=$LLVM_DIR ..
make
```

Generate LLVM IR from the test file:
```bash
# this will generate ./test/test.ll
clang -S -emit-llvm -O1 ./test/test_mul_by_2.cpp -o ./test/test.ll

```

Use opt to run your LLVM pass on the generated LLVM IR:
```bash
# this will generate ./test/output.ll

opt -load-pass-plugin ../build/lib/libMBAMul.dylib -passes="mbamul" -debug-pass-manager < ./test/test.ll -o ./test/output.ll
# or
opt -load-pass-plugin ../build/lib/libMBAMul.so -passes="mbamul" -debug-pass-manager < ./test/test.ll -o ./test/output.ll
```

Convert the bitcode to LLVM IR:
```bash
# this will generate ./test/output.ll.ll
llvm-dis ./test/output.ll   
```

Examine the result
```bash
cat  ./test/output.ll.ll
```

