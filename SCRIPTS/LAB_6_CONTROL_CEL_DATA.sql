set names WIN1251;
connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';

create exception my_exc 'Error! This field have dependence.
Remains the old value.';

create trigger trig_control_cel_data for CD before
update or delete
as
begin
if ((OLD.CD_ID in (select SALE_CD.CD_ID from SALE_CD)) or
(OLD.CD_ID in (select CD_GENRE.CD_ID from CD_GENRE))  or
(OLD.CD_ID in (select CD_PLAYERS.CD_ID from CD_PLAYERS)) or
(OLD.CD_ID in (select CD_RECORDING_STUDIO.CD_ID from CD_RECORDING_STUDIO)) or
(OLD.CD_ID in (select CD_TRACK.CD_ID from CD_TRACK)))
then
begin
exception my_exc;
end

when exception my_exc  do
begin
NEW.CD_ID = OLD.CD_ID;
end

end;

commit;

