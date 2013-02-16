#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.8.1
 Author:				 myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

#include <ScreenCapture.au3>

Func CheckIfHatch($hwnd)
   $color = PixelGetColor(692,70);
   return $color == 0
EndFunc

Func CheckIfShiny($hwnd,$pokemon)
   If($pokemon == 123) Then
	  $color = PixelGetColor(382,254);
	  return ($color == 0xF0E078) == false
   ElseIf($pokemon == 280) Then
	  $color = PixelGetColor(386,258);
	  return ($color == 0x70B870) == false
   EndIf	  
EndFunc

Func OnBike($hwnd)
   $color = PixelGetColor(369,255);
   return ($color == 0x682828) == false
EndFunc

Func MakeScreenshot($hwnd)
	$ext = "png"
	$out = @ScriptDir & "\img\" & @MDAY & "-" & @MON & "-" & @YEAR & "-" & @HOUR & "-" & @MIN & "-" & @SEC & "." & $ext
	_ScreenCapture_CaptureWnd($out, $hWnd)
EndFunc