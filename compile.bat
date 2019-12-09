"C:\Dropbox\Autohotkey\Ahk2Exe_L\Ahk2Exe.exe" /in "icon_test.ahk" /icon "icons\ahk_default.ico"

@REM   The TIMEOUTs make time for the executable to be compiled and edited at each step.
@REM   Without them, some icons might not be overwritten properly.
@TIMEOUT 5

copy icon_test.exe icon_test_edited.exe

@TIMEOUT 1

"C:\Dropbox\Apps\ResHacker\ResourceHacker.exe" -open icon_test_edited.exe -save icon_test_edited.exe -action addoverwrite -resource "icons\up.ico" -mask ICONGROUP,159,

@TIMEOUT 1

"C:\Dropbox\Apps\ResHacker\ResourceHacker.exe" -open icon_test_edited.exe -save icon_test_edited.exe -action addoverwrite -resource "icons\up_right.ico" -mask ICONGROUP,160,

@TIMEOUT 1

"C:\Dropbox\Apps\ResHacker\ResourceHacker.exe" -open icon_test_edited.exe -save icon_test_edited.exe -action addoverwrite -resource "icons\right.ico" -mask ICONGROUP,206,

@TIMEOUT 1

"C:\Dropbox\Apps\ResHacker\ResourceHacker.exe" -open icon_test_edited.exe -save icon_test_edited.exe -action addoverwrite -resource "icons\down_right.ico" -mask ICONGROUP,207,

@TIMEOUT 1

"C:\Dropbox\Apps\ResHacker\ResourceHacker.exe" -open icon_test_edited.exe -save icon_test_edited.exe -action addoverwrite -resource "icons\down.ico" -mask ICONGROUP,208,

@TIMEOUT 1

@PAUSE
