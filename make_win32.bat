mkdir build32 & pushd build32
cmake -G "Visual Studio 16 2019" ..
popd
cmake --build build32 --config Release
md Plugins\Windows\x86
copy /Y build32\Release\kcp.dll Plugins\Windows\x86\kcp.dll
rmdir /S /Q build32
pause
