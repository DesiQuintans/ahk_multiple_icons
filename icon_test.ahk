#NoEnv
#SingleInstance, force
SetWorkingDir %A_ScriptDir%

MsgBox, 0, Multiple Icon Tester,
(
Press F1-F5 to change the tray icon.
Press F6 to Suspend and F7 to Pause.

Press Escape to quit.
)

F1::
    Menu, Tray, Icon, %A_ScriptFullPath%, -159
    MsgBox, 0, Multiple Icon Tester, Showing icon -159 in the system tray.`nThis is the main program icon.
    Return

F2::
    Menu, Tray, Icon, %A_ScriptFullPath%, -160
    MsgBox, 0, Multiple Icon Tester, Showing icon -160 in the system tray.`nThis is the default script icon.
    Return

F3::
    Menu, Tray, Icon, %A_ScriptFullPath%, -206
    MsgBox, 0, Multiple Icon Tester, Showing icon -206 in the system tray.`nThis is the 'Suspend' icon.
    Return

F4::
    Menu, Tray, Icon, %A_ScriptFullPath%, -207
    MsgBox, 0, Multiple Icon Tester, Showing icon -207 in the system tray.`nThis is the 'Pause' icon.
    Return

F5::
    Menu, Tray, Icon, %A_ScriptFullPath%, -208
    MsgBox, 0, Multiple Icon Tester, Showing icon -208 in the system tray.`nThis is the 'Suspend' + 'Pause' icon.
    Return

F6::Suspend
F7::Pause

Esc::ExitApp
