#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.8.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

#include "main.au3"

HotKeySet("{HOME}", 'Nakurwiaj')
HotKeySet("{END}", 'Wykurwiaj')


Opt("PixelCoordMode",0)

;var eggs = 5;

Func Nakurwiaj()
   $hwnd = WinGetHandle("VisualBoyAdvance")
   Main($hwnd)
EndFunc

Func Wykurwiaj()
   Exit(0)
EndFunc


While(1)
   Sleep(100)
WEnd

; Script Start - Add your code below here

