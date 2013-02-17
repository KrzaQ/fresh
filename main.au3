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
			$cnt = 0
			While((PixelGetColor(668,492,$hwnd) == 0xF8F8F8))
			   Send("a")
			   Sleep(100)
			   $cnt = $cnt + 1
			   If($cnt == 10) Then
				  $cnt = 0
				  Send("a")
			   EndIf
			WEnd
			While((PixelGetColor(652,361,$hwnd) == 0xF8F8F8) == false)
			   Sleep(100)
			WEnd
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
			$pixel1 = PixelGetColor(368,145,$hwnd);
			$pixel2 = PixelGetColor(370,190,$hwnd);
		 
			if($pixel1 == 0xC85048 and $pixel2 == 0x60A0D8) Then
				$finish = true
			ElseIf(PixelGetColor(331,288,$hwnd) == 0xD8C0A0) Then
			   While((PixelGetColor(416,269,$hwnd) == 0x9060A0) == false)
				  Send("l")
			   WEnd
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
		While((PixelGetColor(348,264,$hwnd) == 0xF8F8F8) == false)
			Send("i")
			Sleep(250)
		WEnd
	  
	  
		; arrow at Bill's PC
		While((PixelGetColor(40,99,$hwnd)==0x606060)==false)
			Send("s")
			Sleep(400)
		Wend
		
		 While((PixelGetColor(65,108,$hwnd) == 0) == false)
			Send("s")
			Sleep(400)
		 WEnd
			
		While((PixelGetColor(40,99,$hwnd)==0x606060)==false)
			Send("s")
			Sleep(400)
		Wend
	  
		 Sleep(100)
	  
		 ;MsgBox(0,";) 3","; arrow at WITHDRAW POKEMON go to DEPOSIT POKEMON")
			
		; arrow at WITHDRAW POKEMON go to DEPOSIT POKEMON
		While((PixelGetColor(39,146,$hwnd)==0x606060)==false)
			Send("k")
			Sleep(100)
		WEnd
		
		;MsgBox(0,";) 4","; DEPOSIT POKEMON")
			
	    ; DEPOSIT POKEMON
		While((PixelGetColor(400,200,$hwnd) == 0xF8F8F8))
		 Send("s")
		 Sleep(900)
		WEnd
	  
		;MsgBox(0,";) 5","; MOVING HAND TO SECOND POKEMON IN PARTY")
			
		; MOVING HAND TO SECOND POKEMON IN PARTY
		While((PixelGetColor(471,54,$hwnd)==0xF8F8F8)==false)
			Send("k")
			Sleep(300)
		WEnd
		
		;MsgBox(0,";) 6","; ; CLICK UNTIL MENU APPEARS")
		 ; CLICK UNTIL MENU APPEARS
		While((PixelGetColor(689,186,$hwnd)==0xF8F8F8)==false)
			Send("s")
			Sleep(400)
		WEnd
		
		;MsgBox(0,";) 7","; ; SELECT RELEASE")
		; SELECT RELEASE
		While((PixelGetColor(495,340,$hwnd)==0x606060)==false)
			Send("k")
			Sleep(200)
		WEnd
		
		;MsgBox(0,";) 8","; ; CLICK UNTIL MENU APPEARS")
		While((PixelGetColor(572,364,$hwnd)==0x706880)==false)
			Send("s")
			Sleep(400)
		WEnd
		
		;MsgBox(0,";) 9","; ; CLICK UNTIL ARE YOU SURE APPEARS")
		; CLICK UNTIL ARE YOU SURE APPEARS
		While((PixelGetColor(592,338,$hwnd)==0x606060)==false)
			Send("i")
			Sleep(200)
		WEnd
		
	    While(PixelGetColor(592,338,$hwnd)==0x606060)
			Send("s")
			Sleep(200)
		WEnd
	  
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
   
   While((PixelGetColor(360,360) == 0))
	  Send("k")
	  Sleep(250)
   WEnd

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
   
   
   While((PixelGetColor(331,288,$hwnd) == 0xD8C0A0) == false)
	  Send("j")
   WEnd
   While((PixelGetColor(404,247,$hwnd) == 0x784848) == false)
	  Send("i")
   WEnd
   
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
	  
	  $isshiny = CheckIfShiny($hwnd,280);
	  
	  $msg = "Shiny!"
	  if($isshiny == False) Then
		 $msg = "Not shiny :("
		 ;MsgBox(0,$msg,$msg)
		 Send("{SHIFTDOWN}")
		While((PixelGetColor(702,62,$hwnd) == 0))
		   Send("a")
		   Sleep(200)
	    WEnd
		 Send("{SHIFTUP}")
		 
		 ReleaseShit($hwnd,true)
		 
		 LeavePokeCenter($hwnd)
		 
		 GetEgg($hwnd)
	  Else
		 Exit(0)
	  EndIf
	  
   WEnd
   
   MsgBox(0,"hatched!",$msg)
   
EndFunc



