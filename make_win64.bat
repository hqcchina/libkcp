mkdir build64 & pushd build64
cmake -G "Visual Studio 16 2019" -A "Win64" ..
popd
cmake --build build64 --config Release
md Plugins\Windows\x86_64
copy /Y build64\Release\kcp.dll Plugins\Windows\x86_64\kcp.dll
rmdir /S /Q build64
pause
