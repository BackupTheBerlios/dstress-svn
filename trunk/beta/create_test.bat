@echo off
dmd dstresstest.d -unittest
dstresstest.exe
echo.
echo Ignore the warning about not finding stlp45dm_static.lib.
echo It doesn't matter.
echo.
echo Now it's time to run 'test.bat'.
pause
erase *.map
erase *.obj
