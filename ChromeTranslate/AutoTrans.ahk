#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%

#[::
MouseGetPos, xpos, ypos 
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, chrome_translate.PNG
; if (ErrorLevel = 2)
;     MsgBox Could not conduct the search.
; else if (ErrorLevel = 1)
;     MsgBox Icon could not be found on the screen.
; else
;     MsgBox The icon was found at %FoundX%x%FoundY%.
; Click, FoundX FoundY 0
MouseClick, left, FoundX+10, FoundY+10
Send, {Left}
DllCall("SetCursorPos", "int", xpos, "int", ypos)
Sleep, 500
Send, {Esc}
Return

#]::
MouseGetPos, xpos, ypos 
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, chrome_translate.PNG
MouseClick, left, FoundX+10, FoundY+10
Send, {Right}
DllCall("SetCursorPos", "int", xpos, "int", ypos)
Sleep, 500
Send, {Esc}
Return
