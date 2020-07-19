First = LOAD '/data/*' USING PigStorage(',') AS
(
	userId : int,
	moveID : int,
	rating : double,
	date : int
);
New_Data = FILTER First BY(date matches '.*koltuk.*');

DUMP New_Data;
