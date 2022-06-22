# Parts-Ordering-Automator
This project is licensed under the terms of the MIT license. View the license [here](https://github.com/Vomet/Parts-Ordering-Automator/blob/main/LICENSE.txt).

For use in a specific Microsoft Access Database template.

## Prerequisites
- [ ] AutoHotKey

## Instructions
1. Download latest version of [AutoHotKey](https://www.autohotkey.com/). Note, the [portable version](https://www.autohotkey.com/download/) is recommended.
  - if you are downloading the portable version, download the zip, and unzip.
2. Download this [repository](https://github.com/Vomet/Parts-Ordering-Automator/) as a ZIP file.
  - unzip project repository
2. Ensure AutoHotKey is running. If you are using the portable version, open the `.ahk` file with `AutoHotKeyU64.exe`.
3. Open `Parts Ordering.ahk`.
4. Change coordinates to ones that work on your computer. See the [Window Spy](#Window-Spy) section for instructions on how to use.
  - **Do not assume the default coordinates work.**

### Window Spy
Window Spy helps you set coordinates for this script. When setting coordinates, ensure that you use the Window values under Mouse Position. See screenshot below as reference.

![](image_here)

You will need to set coordinates for the following variables:
- New Order button (new_order_btn_pos)
- Product Info tab (product_info_tab_pos)
- Shipping Info tab (shipping_info_tab_pos)
- Payment Info tab (payment_info_tab_pos)
- Invoice Order button (invoice_order_btn_pos)
- Save and Close button (save_and_close_btn)

## Hotkeys
`F1`: Clicks "New Order" button

`F2`: Clicks "New Product" tab and selects dropdown

`F3`: Clicks "Shipping Info" tab and selects dropdown

`F4`:
  1. Completes "Payment Info" tab
  2. Completes "Invoice Order", "Ship Order", "Mark as Complete", and presses `F1` (clicks "New Order" button)

`F5`: Stops program (by refreshing script)


## Potential Issues
It is recommended to press each function key in sequential order (`F1`, `F2`, `F3`, `F4`). Pressing keys out of order may result in errors.

Occasionally, the mouse may click off the ticket window. If it does, it will then close that ticket window. Reopen that ticket window and continue from there. You may still use the script.
