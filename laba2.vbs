Dim s
do
WScript.StdOut.WriteLine "����:" 

WScript.StdOut.WriteLine "----------------------------" 

WScript.StdOut.WriteLine "1.  ���������� � ������" 

WScript.StdOut.WriteLine "2. �������� ����� �� ������� ������� ������ � ��������� �����" 

WScript.StdOut.WriteLine "3. ���������� � �������� ������ ������ � ��������� ���������� �����" 

WScript.StdOut.WriteLine "4. ����� � ���������" 

WScript.StdOut.Write "�������� ����� ����:" 

s = WScript.StdIn.ReadLine 

Set WshShell = WScript.CreateObject("WScript.Shell") 

if (s="1") Then 

WScript.StdOut.WriteLine "��������� �������� ����������, ���-11 " 

elseif(s="2") Then 

WScript.StdOut.Write "������� ��� �����:" 

f = WScript.StdIn.ReadLine 

Code=WshShell.Run("%COMSPEC% /c 02.cmd >"+f ,0,true) 
elseif(s="3") Then 
WScript.StdOut.Write "������� ��� ������:" 
f = WScript.StdIn.ReadLine 
Set oUrlLink = WshShell.CreateShortcut(f+".URL") 
WScript.StdOut.Write "������� ��� �������:" 
f = WScript.StdIn.ReadLine 

oUrlLink.TargetPath=f 
oUrlLink.Save 

End if 

loop until (s="4") 