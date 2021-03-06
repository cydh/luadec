@echo off
set BIN_PATH=%1
echo copying allopcodes.lua
copy /y ..\bin\allopcodes.lua allopcodes.lua
echo generating allopcodes.luac
%BIN_PATH%\luac -o allopcodes.luac allopcodes.lua
echo generating allopcodes_lua.h
%BIN_PATH%\lua ..\bin\bin2c.lua allopcodes.lua allopcodes_lua > allopcodes_lua.h
echo generating allopcodes_luac.h
%BIN_PATH%\lua ..\bin\bin2c.lua allopcodes.luac allopcodes_luac > allopcodes_luac.h
@echo on
