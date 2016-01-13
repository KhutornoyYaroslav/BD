connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';

/*������� �������� � ������ Ian Gillan �� ������� ARTISTS*/
create view  LIKE_IANGILLAN as select * from ARTISTS where ARTISTS_NAME like 'Ian Gillan%';
/*������� �������� ���������� � ������ 1969-1971 ����� �� ������� CD*/
create view  BETWEEN_CD69_71 as select * from CD where CD_YEAR between 1969 and 1971;
/*������� �����, � ������� ���� deeppurple.com �� ������� PLAYERS*/
create view  IN_PLAYERS6 as select * from PLAYERS where PLAYER_SITE in ('deeppurple.com');

commit;

