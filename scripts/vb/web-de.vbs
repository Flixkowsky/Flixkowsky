option explicit
dim ie, x

set x=createobject("wscript.shell")
set ie=createobject("InternetExplorer.Application")

On Error Resume Next

Sub WaitForLoad
Do while ie.Busy
wscript.sleep 200
Loop
End Sub

ie.Navigate "https://web.de/"
ie.Toolbar=0
ie.StatusBar=0
ie.Height=1000
ie.Width=1900
ie.Top=0
ie.Left=0
ie.Resizable=1

Call WaitForLoad

wscript.sleep 500

ie.Document.All.Item("freemailLoginUsername").Value="e_mail"
ie.Document.All.Item("freemailLoginPassword").Value="passw"
ie.Document.All.Item().Value("Login").Submit
ie.Document.All.Item().D

'x.sendkeys "Hi"
'x.sendkeys "{enter}"

ie.Visible=1
