#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.8.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

Func CheckIfHatch($hwnd)
   $color = PixelGetColor(692,70);
   MsgBox(0,"color",$color)
EndFunc

Func MoveLeftRight($hwnd)
   Send("{SHIFTDOWN}")
   Sleep(50)
   Send("z")
   Sleep(50)
   Send("llllllllll")
   Send("llllllllll")
   Send("llllllllll")
   Send("llllllllll")
   Send("llllllllll")
   Send("jjjjjjjjjj")
   Send("jjjjjjjjjj")
   Send("jjjjjjjjjj")
   Send("jjjjjjjjjj")
   Send("jjjjjjjjjj")
   Sleep(50)
   Send("z")
   Sleep(50)
   Send("{SHIFTUP}")
   CheckIfHatch($hwnd)
EndFunc

; Script Start - Add your code below here

