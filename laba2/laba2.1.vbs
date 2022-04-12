Dim s
do
WScript.StdOut.WriteLine "МЕНЮ:"
WScript.StdOut.WriteLine "----------------------------"
WScript.StdOut.WriteLine "1. Инфрмация о создателе и описание программы:"
WScript.StdOut.WriteLine "2. Создание файла со списком скрытых файлов в указанном месте."
WScript.StdOut.WriteLine "3. Сохранение в блокноте списка дисков с значением свободного места."
WScript.StdOut.WriteLine "4. Выход с программы."
WScript.StdOut.Write "Введите номер требуемого пунтка:"
s = WScript.StdIn.ReadLine
Dim FSO, papka, WshShell, oUrlLink, WshFldrs, p
Set WshShell = WScript.CreateObject("WScript.Shell")

if (s="1") Then
WScript.StdOut.WriteLine "Высоцкая Кристина Валерьевна, ИТП-11."

elseif(s="2") Then
WScript.StdOut.Write "‚ўҐ¤ЁвҐ Ё¬п Ї ЇЄЁ. "
WScript.StdOut.WriteLine "ЏаЁ¬Ґа: C:\User\*.*"
papka = WScript.StdIn.ReadLine
Set FSO = CreateObject("Scripting.FileSystemObject")
FSO.DeleteFile papka

'б®§¤ ­ЁҐ ббл«ЄЁ Ё па«лЄ 
elseif(s="3") Then
WScript.StdOut.Write "‚ўҐ¤ЁвҐ Ё¬п па«лЄ :"
f = WScript.StdIn.ReadLine
Set oUrlLink = WshShell.CreateShortcut(f+".URL")
WScript.StdOut.Write "‚ўҐ¤ЁвҐ Ё¬п аҐбгаб :"
f = WScript.StdIn.ReadLine
'гбв ­ ў«Ёў Ґ¬ оа«
oUrlLink.TargetPath = f
'б®еа ­пҐ¬ па«лЄ
oUrlLink.Save
'б®§¤ Ґ¬ ®ЎмҐЄв FileSystemObject
Set FSO = WScript.CreateObject("Scripting.FileSystemObject")
'б®§¤ Ґ¬ ®ЎмҐЄв WshSpecialFolders
Set WshFldrs = WshShell.SpecialFolders
'®ЇаҐ¤Ґ«пҐ¬ Їгвм Є а Ў®зҐ¬г бв®«г
PathCopy = WshFldrs.item("Desktop")+"\"
'б®§¤ Ґ¬ ®ЎмҐЄв ¤«п ббл«ЄЁ
Set p = FSO.GetFile(oUrlLink)
'Є®ЇЁагҐ¬ д ©« ­  а Ў®зЁ© бв®«
p.Copy PathCopy

End if
loop until (s="4")
