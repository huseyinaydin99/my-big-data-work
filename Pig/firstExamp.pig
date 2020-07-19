First = LOAD '/data/*' USING PigStorage(',') AS
(
	userId : int,
	moveID : int,
	rating : double,
	date : int
);
New_Data = FILTER First BY(userId==200 OR moveID=200);

DUMP New_Data;
