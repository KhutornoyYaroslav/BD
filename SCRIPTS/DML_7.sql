connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';
/*������ �������, �������������� ���������� �������������� � �������������� ����������� �
���������� ����������� �� ��������� �����������*/

/*������������� ������� �� ��������, ���������� ���-�� �������� ������� ������� � �������� ������
�� ������, � ������� ���-�� �������� ������ 1*/
create view GROUP_SELECT as select  CD.CD_FORMAT as FORMAT, count(CD.CD_FORMAT) as CD_COUNT
from CD group by CD.CD_FORMAT having count(CD.CD_FORMAT)>1;
;

commit;

