@echo off

cd edk2

:: 1. 自動設定 NASM 變數
set NASM_PREFIX=nasm-3.01\
set IASL_PREFIX=iasl-win-20260408\

:: 2. 自動設定 EDK2 變數
.\edksetup.bat Rebuild

:: 3. 直接開始編譯
build -p OvmfPkg/OvmfPkgX64.dsc -a X64 -b RELEASE