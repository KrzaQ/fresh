#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.8.1
 Author:				 myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

Func CheckIfHatch($hwnd)
   $color = PixelGetColor(692,70);
   return $color == 0
EndFunc

Func CheckIfShiny($hwnd,$pokemon)
   $color = PixelGetColor(382,254);
   return ($color == 0xF0E078) == false
EndFunc

Func OnBike($hwnd)
   $color = PixelGetColor(369,255);
   return ($color == 0x682828) == false
EndFunc
