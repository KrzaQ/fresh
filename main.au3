#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.8.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

#include "common.au3"

Global $eggs = 5

Func MoveLeftRight($hwnd)
   While(CheckIfHatch($hwnd) == false)
	  Send("{SHIFTDOWN}")
	  Sleep(100)
	  Send("z")
	  Sleep(100)
	  if(OnBike($hwnd) == false) Then
		 Send("z")
		 Sleep(100)
	  EndIf
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
	  Sleep(100)
	  Send("z")
	  Sleep(100)
	  Send("a")
	  Sleep(100)
	  Send("{SHIFTUP}")
	  Sleep(100)
   WEnd
   Send("{SHIFTDOWN}")
   Send("a")
   Sleep(500)
   Send("{SHIFTUP}")
   $eggs = $eggs - 1
EndFunc

Func ReleaseShit($hwnd,$belowPokeCenter)
   if($belowPokeCenter) Then
	  Send("{SHIFTDOWN}")
	  
	  if(OnBike($hwnd) == false) Then
		 Sleep(100)
		 Send("z")
		 Sleep(100)
	  EndIf
	  
	  
	  
	  Send("llllllllll")
	  Sleep(100)
	  Send("llllllllll")
	  Sleep(100)
	  Send("llllllllll")
	  Sleep(100)
	  Send("llllllllll")
	  Sleep(100)
	  Send("llllllllll")
	  Sleep(100)
	  
	  $finish = false
	  
	  While($finish == false)
		 Send("j")
		 Sleep(250)
		 $pixel1 = PixelGetColor(368,145);
		 $pixel2 = PixelGetColor(370,190);
		 
		 if($pixel1 == 0xC85048 and $pixel2 == 0x60A0D8) Then
			$finish = true
		 EndIf
	  WEnd
	  
	  Send("iiiiiiiiiiiiiiiiiiiii")
	  Send("iiiiiiiiiiiiiiiiiiiii")
	  Send("iiiiiiiiiiiiiiiiiiiii")
	  Send("iiiiiiiiiiiiiiiiiiiii")
	  
	  Send("lllllllllllllllllllll")
	  Send("lllllllllllllllllllll")
	  Send("lllllllllllllllllllll")
	  
	  Send("iiiiiiiiiiiiiiiiiiiii")
	  Send("iiiiiiiiiiiiiiiiiiiii")
	  
	  Send("jjjjjjjjjjjjjjjjjjjjj")
	  Send("jjjjjjjjjjjjjjjjjjjjj")
	  Send("jjjjjjjjjjjjjjjjjjjjj")
	  
	  Sleep(100)
	  Send("i")
	  Sleep(100)
	  
	  for $i = 1 To 5 Step 1
		 Send("s")
		 Sleep(250)
	  Next
	  
	  Send("k")
	  Sleep(100)
	  Send("s")
	  Sleep(300)
	  Send("l")
	  Sleep(300)
	  Send("s")
	  Sleep(300)
	  Send("i")
	  Sleep(300)
	  Send("i")
	  Sleep(300)
	  Send("s")
	  Sleep(300)
	  Send("i")
	  Sleep(300)
	  Send("s")
	  Sleep(300)
	  
	  for $i = 1 To 10 Step 1
		 Send("a")
		 Sleep(300)
	  Next
	  
	  
	  Send("{SHIFTUP}")
   Else
	  MsgBox(0,"error","not supported atm")
	  Exit(0)
   EndIf
   
   
EndFunc

Func LeavePokeCenter($hwnd)
   Send("{SHIFTDOWN}")
   Sleep(100)
   Send("lllllllllllllllllllll")
   Sleep(100)
   Send("lllllllllllllllllllll")
   
   Send("kkkkkkkkkkkkkkkkkkkkk")
   Sleep(100)
   Send("kkkkkkkkkkkkkkkkkkkkk")
   Sleep(100)
   Send("kkkkkkkkkkkkkkkkkkkkk")
   Sleep(100)
   Send("kkkkkkkkkkkkkkkkkkkkk")
	
   While((PixelGetColor(368,321) == 0xF88070) == false)
	  Send("j")
	  Sleep(250)
   WEnd
   
   Send("k")
   Sleep(250)
   Send("k")
   Sleep(250)
   

   Send("{SHIFTUP}")
EndFunc

Func GetEgg($hwnd)
   Send("{SHIFTDOWN}")
   Sleep(100)
   Send("z")
   Sleep(100)
   
   if(OnBike($hwnd) == false) Then
	  Sleep(100)
	  Send("z")
	  Sleep(100)
   EndIf
	  
   Sleep(100)
   Send("jjjjjjjjjjjjjjjjjjjjj")
   Sleep(100)
   Send("iiiiiiiiiiiiiiiiiiiii")
   
   Sleep(150)
   Send("l")
   Sleep(150)
   Send("l")
   Sleep(150)
   Send("l")
   
   Sleep(150)
   
   While((PixelGetColor(560,273) == 0xF8D0B0) == false)
	  Send("i")
	  Sleep(300)
	  Send("i")
	  Sleep(300)
	  Send("k")
	  Sleep(300)
	  Send("k")
	  Sleep(1000)
	  if(CheckIfHatch($hwnd)) Then
		 Send("{SHIFTUP}")
		 ReleaseShit($hwnd,false)
		 Send("{SHIFTDOWN}")
	  EndIf
	  
	  $color = PixelGetColor(30,138,$hwnd)
	  
	  if(color == 0) Then
		 While(PixelGetColor(30,138,$hwnd) == 0)
			Send("k")
			Sleep(250)
		 WEnd
	  Else
		 While(PixelGetColor(30,138,$hwnd) == 0)
			Send("k")
			Sleep(250)
		 WEnd
	  EndIf
	  
   WEnd
   
   Send("l")
   Sleep(200)
   Send("l")
   Sleep(200)
   Send("l")
   Sleep(200)
   
   for $i = 0 To 8 Step 1
	  Send("s")
	  Sleep(300)
   Next
   
   Send("a")
   Sleep(250)
   Send("a")
   Sleep(250)
   
   Send("j")
   Sleep(100)
   Send("j")
   Sleep(100)
   Send("j")
   Sleep(100)
   
   for $i = 0 to 12 Step 1
	  Send("k")
	  Sleep(100)
   Next
   
   Send("{SHIFTUP}")
EndFunc

Func Main($hwnd)
   
   $isshiny = false
   
   While($isshiny == false)
	  
	  MoveLeftRight($hwnd)
	  
	  $isshiny = CheckIfShiny($hwnd,123);
	  
	  $msg = "Shiny!"
	  if($isshiny == False) Then
		 $msg = "Not shiny :("
		 Send("{SHIFTDOWN}")
		 Sleep(500)
		 Send("a")
		 Sleep(250)
		 Send("{SHIFTUP}")
		 
		 ReleaseShit($hwnd,true)
		 
		 LeavePokeCenter($hwnd)
		 
		 GetEgg($hwnd)
	  EndIf
	  
   WEnd
   
   MsgBox(0,"hatched!",$msg)
   
EndFunc



