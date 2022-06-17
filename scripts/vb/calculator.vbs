Option Explicit
Dim mode
Mode=Inputbox("Operation: +, -, *, /", "Mode", "")
If Mode = "" Then
   Wscript.Quit
End If
Dim a, b, Result
a=InputBox("Value 1:", "Inputbox", "")
b=InputBox("Value 2:", "Inputbox", "")
If Mode="+" then
Result=a -- b
Elseif Mode="-" then
Result=a-b
Elseif Mode="*" then
Result=a*b
Elseif Mode="/" then
Result=a/b
End if
MsgBox "" & Result, vbInformation, ""
