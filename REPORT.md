llvm-tutor
=========

# Programming Assignment 3 Report
## LLVM Pass: Replace Integer Multiplication by 2 with Addition

```
Student:    Baran Kuzu
Student No: 313031001
repo url: https://github.com/eheperson/llvm-tutor
```
> This report ensures the assignment requirements are met, providing clear documentation and analysis of the pass implementation and its effects.

## Course: CENG513 - Spring 2024

### Introduction

- In this programming assignment, I implemented custom LLVM pass that replaces integer multiplication by 2 with an equivalent addition operation. 
- The goal is to optimize expressions like `x = y * 2` into `x = y + y`.
- I want transform all instances of mul `i32 %x, 2` into `add i32 %x, %x` in the provided LLVM Intermediate Representation (IR) code.


### Implementation Details
- Implemented `MBAMul.cpp` pass identifies `mul` instructions in LLVM IR.
- also header file  `MBAMul.h` 
- Replaces instances of multiplication by 2 (`mul i32 %x, 2`) with addition (`add i32 %x, %x`).
- Updated `CMakeLists.txt` to include the new pass.
- Different sample test cases implemented in  `test\test_mul_by_2.cpp`



### LLVM IR Transformation Analysis

- **Function: `test_mul_by_two`**
  - **Original C++**: `return x * 2;`
  - **Transformed IR**: 
    ```llvm
    define noundef i32 @_Z15test_mul_by_twoi(i32 noundef %0) local_unnamed_addr #0 {
      %2 = add i32 %0, %0
      ret i32 %2
    }
    ```
  - **Analysis**: Correctly replaced `mul i32 %0, 2` with `add i32 %0, %0`.

- **Function: `test_mul_by_two_var`**
  - **Original C++**: `return x * y * 2;`
  - **Transformed IR**: 
    ```llvm
    define noundef i32 @_Z19test_mul_by_two_varii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
      %3 = mul i32 %0, %1
      %4 = add i32 %3, %3
      ret i32 %4
    }
    ```
  - **Analysis**: Correctly transformed `x * y * 2` into `x * y + x * y`.

- **Function: `test_no_mul`**
  - **Original C++**: `return x + 2;`
  - **Transformed IR**: 
    ```llvm
    define noundef i32 @_Z11test_no_muli(i32 noundef %0) local_unnamed_addr #0 {
      %2 = add nsw i32 %0, 2
      ret i32 %2
    }
    ```
  - **Analysis**: No change required, and none made.

- **Function: `test_edge_case_zero`**
  - **Original C++**: `return x * 0 * 2;`
  - **Transformed IR**: 
    ```llvm
    define noundef i32 @_Z19test_edge_case_zeroi(i32 noundef %0) local_unnamed_addr #0 {
      ret i32 0
    }
    ```
  - **Analysis**: Correctly optimized to return 0 directly.

- **Function: `test_large_number`**
  - **Original C++**: `return x * 1000000 * 2;`
  - **Transformed IR**: 
    ```llvm
    define noundef i32 @_Z17test_large_numberi(i32 noundef %0) local_unnamed_addr #0 {
      %2 = mul i32 %0, 2000000
      ret i32 %2
    }
    ```
  - **Analysis**: Folded multiplication correctly, efficient transformation.

- **Function: `test_negative`**
  - **Original C++**: `return x * -2;`
  - **Transformed IR**: 
    ```llvm
    define noundef i32 @_Z13test_negativei(i32 noundef %0) local_unnamed_addr #0 {
      %2 = mul nsw i32 %0, -2
      ret i32 %2
    }
    ```
  - **Analysis**: No change required for multiplication by -2.

### Conclusion

- The pass successfully transforms multiplications by 2 into additions by themselves. 
- The transformations maintain correctness and improve clarity by adhering to the assignment's requirements. 
- Future improvements could include handling more complex patterns and ensuring compatibility with various LLVM optimizations.

### References

- [LLVM Writing a New Pass](https://llvm.org/docs/WritingAnLLVMNewPMPass.html)
- [LLVM Tutor Repository](https://github.com/banach-space/llvm-tutor)