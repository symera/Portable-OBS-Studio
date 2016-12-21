#NoTrayIcon                                      ; disables the showing of a tray icon
#SingleInstance force                            ; determines whether a script is allowed to run again when it is already running - FORCE skips the dialog box and replaces the old instance automatically
#NoEnv                                           ; prevents empty variables from being looked up as potential environment variables
SendMode Input                                   ; recommended for new scripts due to its superior speed and reliability
SetWorkingDir %A_ScriptDir%                      ; ensures a consistent starting directory
#Include tf.ahk

; "Portabilize" json
;
SetWorkingDir %A_ScriptDir%\config\obs-studio\basic\scenes
Loop Files, %A_WorkingDir%\*.json
{
    ;MsgBox, %A_LoopFilename%
    TF_RegExReplace("!"A_LoopFilename, """file"":\s"".*?/sources/", """file"": ""../../sources/")
}

; Check "Bit"ness
;
if (A_PtrSize = 8)
  bitScript = 64
else ;if (A_PtrSize = 4)
  bitScript = 32
if (A_Is64bitOS)
  bitOS = 64
else
  bitOS = 32

; Run OBS
;
if (bitOS = 64) {
    SetWorkingDir %A_ScriptDir%\bin\64bit
    Run, obs64.exe
}
else {
    SetWorkingDir %A_ScriptDir%\bin\32bit
    Run, obs32.exe
}

ExitApp
