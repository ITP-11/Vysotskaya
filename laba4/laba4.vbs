n=1
while[$n!=4]
do
clear
echo "-----------------------"
echo "����:"
echo "1.���"
echo "2.����-������ � ��������� �����"
echo "3.�������� ���� ��� �������"
echo "4.�����"
echo "-----------------------"
echo "�������� ��������"
read n
echo "-----------------------"
case n in
1)
echo "�������� �������� ����������" 
;;
2) 
echo "������� ���������� �����"
read ext
ext="*"${ext}
echo "���� ��������� ����?"
read path
path=${path}"/file.txt"
find /**/ -type f -name $ext > $path
;;
3)
echo "� ����� ������� ���������� �������?"
read path
path=${path}"/"
echo $path
if [ -d $path ]; then
cd $path
path=${path}"**"
zip -r arch.zip $path
else 
echo "������ �������� ���"
fi
;;
4)
;;
*)
echo "��������� ������������ �����"
n=0
;;
esac
echo "������� ����� �������"
read
done