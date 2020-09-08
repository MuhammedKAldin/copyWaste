#NoEnv
#Persistent
SendMode Input
SetWorkingDir %A_ScriptDir%

clipboard := "my text"   ; Give the clipboard entirely new contents.
clipboard := ""   ; Empty the clipboard.
clipboard := clipboard   ; Convert any copied files, HTML, or other formatted text to plain text.
clipboard := clipboard " Text to append."   ; Append some text to the clipboard.
StringReplace, clipboard, clipboard, ABC, DEF, All   ; Replace all occurrences of ABC with DEF (also converts the clipboard to plain text).


$MButton::	;; Positioning the current clipped

	MouseGetPos, xpos, ypos 
	mainFunc()
return

mainFunc()
{
	ToolTip, %clipboard% , %xpos%, %ypos%
}

F4::ExitApp
F3::Reload
