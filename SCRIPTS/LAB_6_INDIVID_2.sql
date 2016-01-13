set names WIN1251;
connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';

/* При добавлении трека в альбом сделать проверку на дубли. При
 дублировании - не добавлять.*/

create exception my_exc3 'Error! This song has been already in cd.';

create trigger trig_control_insert_track_in_cd for CD_TRACK before
insert
as
begin
if (
NEW.TRACK_ID in (select CD_TRACK.TRACK_ID from CD_TRACK where
CD_TRACK.CD_ID = NEW.CD_ID))
then
begin
exception my_exc3;
end
end;

commit;

