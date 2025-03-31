#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#MaxHotkeysPerInterval 500
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

scrollDelay :=50  ; Adjust this value to control speed (higher = slower)

; Horizontal scroll wheel handling
WheelLeft::
    if (WinActive("ahk_exe chrome.exe")) {  ; If Chrome is active
        While (GetKeyState("WheelLeft", "P")) {  ; Only send while actively scrolling
            Send {Shift down}
            Send {WheelUp}
            Send {Shift up}
            Sleep %scrollDelay%  ; Adds delay to control speed
        }
    } else {  ; For all other applications
        Send {Shift down}
        Send {WheelUp}
        Send {Shift up}
        Sleep %scrollDelay%  ; Adds a delay to slow down the scroll rate
    }
    return

WheelRight::
    if (WinActive("ahk_exe chrome.exe")) {  ; If Chrome is active
        While (GetKeyState("WheelRight", "P")) {  ; Only send while actively scrolling
            Send {Shift down}
            Send {WheelDown}
            Send {Shift up}
            Sleep %scrollDelay%  ; Adds delay to control speed
        }
    } else {  ; For all other applications
        Send {Shift down}
        Send {WheelDown}
        Send {Shift up}
        Sleep %scrollDelay%  ; Adds a delay to slow down the scroll rate
    }
    return