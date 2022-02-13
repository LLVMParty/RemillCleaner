@echo off

set LLVMPATH=%~dp0..\..\llvm-13.0.1-install
set TBAAFLAG=true
set WARNINGS=-Wno-gnu-inline-cpp-without-extern

"%LLVMPATH%"\bin\clang++ -O3 %WARNINGS% -fno-discard-value-names -fstrict-aliasing -fno-slp-vectorize -mllvm -enable-tbaa=%TBAAFLAG% LLVMHelpers.cpp -emit-llvm -S -I..\..\remill\include -std=c++17 -o LLVMHelpers64.ll
"%LLVMPATH%"\bin\clang++ -O3 %WARNINGS% -fno-discard-value-names -fstrict-aliasing -fno-slp-vectorize -mllvm -enable-tbaa=%TBAAFLAG% LLVMHelpers.cpp -emit-llvm -c -I..\..\remill\include -std=c++17 -o LLVMHelpers64.bc
"%LLVMPATH%"\bin\clang++ -O3 %WARNINGS% -fno-discard-value-names -fstrict-aliasing -fno-slp-vectorize -mllvm -enable-tbaa=%TBAAFLAG% LLVMHelpers.cpp -m32 -emit-llvm -S -I..\..\remill\include -std=c++17 -o LLVMHelpers32.ll
"%LLVMPATH%"\bin\clang++ -O3 %WARNINGS% -fno-discard-value-names -fstrict-aliasing -fno-slp-vectorize -mllvm -enable-tbaa=%TBAAFLAG% LLVMHelpers.cpp -m32 -emit-llvm -c -I..\..\remill\include -std=c++17 -o LLVMHelpers32.bc