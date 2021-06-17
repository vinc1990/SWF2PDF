@echo off&setlocal EnableDelayedExpansion
color 0a
echo %date% %time%
echo SWF2PDF start......
set a=1
for /f "delims=" %%i in ('dir /s/b *.swf') do (
     set "str=%%~ni"
	echo "!str!"
	 java -jar swf-convert.jar pdf "%%i" -o "!str!.pdf" --image-format jpg --ignore-empty
        set /a a+=1
    )

set /a a-=1
echo SWF2PDF finish
pause
