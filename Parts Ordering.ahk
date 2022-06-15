; This project is licensed under the terms of the MIT license. View the license [here](https://github.com/Vomet/Parts-Ordering-Automator/blob/main/LICENSE.txt).


; Variables
; note position clicks *relative* to window. Use WindowSpy.ahk to get XY coordinates
; position is denoted as [x, y]
new_order_btn_pos := [128, 281]
product_info_tab_pos := [76, 236]
shipping_info_tab_pos := [192, 236]
payment_info_tab_pos := [342, 238]
invoice_order_btn_pos := [325, 94]
save_and_close_btn_pos := [721, 58]

; Functions
show_dropdown()
{
	; presses down left alt and down arrow to show dropdown menu
	Send {LAlt down}
	Send {Down down}
	Send {LAlt up}
	Send {Down up}
	return
}

shift_tab()
{
	; presses shift + tab
	Send {LShift down}
	Send {Tab down}
	Send {LShift up}
	Send {Tab up}
	return
}

alt_tab()
{
	; presses alt + tab
	Send {LAlt down}
	Send {Tab down}
	Send {LAlt up}
	Send {Tab up}
	return
}


; Hotkeys
F1::
{
	; presses "New Order" button
	MouseMove, new_order_btn_pos[1], new_order_btn_pos[2], 0
	Send {Click Left}
	show_dropdown()
	return
}

F2::
{
	; clicks "Product" tab
	MouseMove, product_info_tab_pos[1], product_info_tab_pos[2], 0
	Send {Click Left}
	; shows Product dropdown
	Send {Tab}
	show_dropdown()
	return
}

F3::
{
	; clicks "Shipping Info" tab
	MouseMove shipping_info_tab_pos[1], shipping_info_tab_pos[2], 0
	Send {Click Left}
	; shows dropdown for "Ship Via"
	show_dropdown()
	return
}

F4::
{		
	; clicks "Payment Info" tab
	MouseMove payment_info_tab_pos[1], payment_info_tab_pos[2], 0
	Send {Click Left}
	
	; moves to "Payment Date" and submits current date
	Loop, 8 {
		Send {Tab}
	}
	show_dropdown()
	Send {Enter}
	
	; moves to "Invoice Order"
	MouseMove invoice_order_btn_pos[1], invoice_order_btn_pos[2], 0
	Send {Click Left}
	
	; accepts prompt
	Sleep, 750
	Send {Enter}
	
	; closes popup by pressing alt + f4
	Sleep, 1750
	Send {LAlt down}
	Send {F4 down}
	Send {LAlt up}
	Send {F4 up}
	
	; ship order
	Send {Tab}
	Send {Enter}
	Sleep, 100
	Send {Enter}
	
	; Mark as Complete
	shift_tab()
	shift_tab()
	Send {Enter}
	Sleep, 500
	Send {Enter}
	
	; selects Allow for email prompt
	Sleep, 9000
	; comment line if testing. if not commented, it will click "Allow"
	; shift_tab()
	Send {Enter}
	
	; ensures program is focused on Access
	Sleep, 500
	WinActivate, ahk_exe MSAccess.exe

	
	; clicks "Save & Close"
	MouseMove save_and_close_btn_pos[1], save_and_close_btn_pos[2], 0
	Send {Click Left}

	/*
	; #todo: make program press F1 so that it will open up "New Order" button
	Send {F1}
	return
	*/
}

; reloads program. stops script
F5::Reload
