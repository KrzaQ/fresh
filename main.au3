#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.8.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

#include "common.au3"

Global $eggs = 5

Func MoveLeftRight($hwnd)
	
	; 0 - right
	; 1 - left
	$direction = 0
	
	Send("{SHIFTDOWN}")
	Sleep(100)
	While(CheckIfHatch($hwnd) == false)
		if(OnBike($hwnd) == false) Then
			Send("z")
			Sleep(100)
		EndIf
		
		if($direction == 1) Then
			Send("l")
		ElseIf($direction == 0) Then
			Send("j")
		EndIf
		
		if(PixelGetColor(331,288,$hwnd) == 0xD8C0A0) Then
			$direction = 1
		ElseIf(PixelGetColor(416,269,$hwnd) == 0x9060A0) Then
			$direction = 0
		ElseIf(PixelGetColor(668,492,$hwnd) == 0xF8F8F8) Then
			Send("a")
			Sleep(700)
		EndIf
		
	WEnd
	Sleep(100)
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
	  
		While((PixelGetColor(416,269,$hwnd) == 0x9060A0) == false)
			Send("l")
		WEnd
		
		$finish = false
		
		While($finish == false)
			Send("j")
			Sleep(200)
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
		Sleep(250)
	  
	  
		; arrow at Bill's PC
		While((PixelGetColor(40,99,$hwnd)==0x606060)==false)
			Send("s")
		Wend
		
		; arrow at WITHDRAW POKEMON
		While((PixelGetColor(40,99,$hwnd)==0x606060)==false)
			Send("s")
		Wend
	  
	  
		While((PixelGetColor(39,146,$hwnd)==0x606060)==false)
			Send("k")
			Sleep(100)
		WEnd
		
		Send("s")
		Sleep(300)
	  
	  
		While((PixelGetColor(471,54,$hwnd)==0xF8F8F8)==false)
			Send("k")
			Sleep(300)
		WEnd

		Send("s")
		Sleep(400)
		Send("i")
		Sleep(400)
		Send("i")
		Sleep(400)
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
	  
	While((PixelGetColor(30,138,$hwnd) == 0xC8A860)==false)
		Send("l")
		Sleep(250)
	WEnd
   
	Sleep(150)
   
	While((PixelGetColor(560,273,$hwnd) == 0xF8D0B0) == false)
	   
		While((PixelGetColor(375,333) == 0x583840) == false)
			Send("k")
		WEnd
		
		While((PixelGetColor(30,138,$hwnd) == 0) == false)
			Send("i")
		WEnd
	  
		$color = PixelGetColor(30,138,$hwnd)
	  
		if($color == 0) Then
			While(PixelGetColor(30,138,$hwnd) == 0)
				Send("k")
				Sleep(250)
			WEnd
		Else
			While((PixelGetColor(30,138,$hwnd) == 0xC8A860) == false)
				Send("i")
				Sleep(250)
			WEnd
		EndIf
	  
	WEnd
   
	While((PixelGetColor(415,267,$hwnd) == 0xF8D0B0) == false)
		Send("l")
	WEnd
   
	for $i = 0 To 8 Step 1
		Send("s")
		Sleep(300)
	Next
   
	Send("a")
	Sleep(250)
	Send("a")
	Sleep(250)
   
	While((PixelGetColor(30,138,$hwnd) == 0xC8A860)==false)
		Send("j")
		Sleep(250)
	WEnd
   
	While((PixelGetColor(375,333) == 0x583840) == false)
		Send("k")
	WEnd
   
	Send("{SHIFTUP}")
EndFunc

Func Main($hwnd)
   
   $isshiny = false
   
   While($isshiny == false)
	  
	  MoveLeftRight($hwnd)
	  
	  MakeScreenshot($hwnd)
	  
	  $isshiny = CheckIfShiny($hwnd,123);
	  
	  $msg = "Shiny!"
	  if($isshiny == False) Then
		 $msg = "Not shiny :("
		 Send("{SHIFTDOWN}")
		 Sleep(700)
		 Send("a")
		 Sleep(400)
		 Send("{SHIFTUP}")
		 
		 ReleaseShit($hwnd,true)
		 
		 LeavePokeCenter($hwnd)
		 
		 GetEgg($hwnd)
	  EndIf
	  
   WEnd
   
   MsgBox(0,"hatched!",$msg)
   
EndFunc



