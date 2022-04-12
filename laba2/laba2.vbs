Dim s
do
WScript.StdOut.WriteLine "МЕНЮ:" 

WScript.StdOut.WriteLine "----------------------------" 

WScript.StdOut.WriteLine "1.  Информация о авторе" 

WScript.StdOut.WriteLine "2. Создание файла со списком скрытых файлов в указанном месте" 

WScript.StdOut.WriteLine "3. Сохранение в блокноте списка дисков с значением свободного места" 

WScript.StdOut.WriteLine "4. Выход с программы" 

WScript.StdOut.Write "Выберите пункт меню:" 

s = WScript.StdIn.ReadLine 

Set WshShell = WScript.CreateObject("WScript.Shell") 

if (s="1") Then 

WScript.StdOut.WriteLine "”Высоцкая Кристина Валерьевна, ИТП-11 " 

elseif(s="2") Then 

WScript.StdOut.Write "Введите имя файла:" 

f = WScript.StdIn.ReadLine 

Code=WshShell.Run("%COMSPEC% /c 02.cmd >"+f ,0,true) 
elseif(s="3") Then 
WScript.StdOut.Write "Введите имя ярлыка:" 
f = WScript.StdIn.ReadLine 
Set oUrlLink = WshShell.CreateShortcut(f+".URL") 
WScript.StdOut.Write "Введите имя ресурса:" 
f = WScript.StdIn.ReadLine 

oUrlLink.TargetPath=f 
oUrlLink.Save 

End if 

loop until (s="4") 