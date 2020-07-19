Personel = LOAD '/joinexam/per.csv' USING PigStorage(',') AS
(
	name : chararray,
	age : int,
	dept_id : int
);
New_Per = LOAD '/joinexam/new_per.csv' USING PigStorage(',') AS
(
	name : chararray,
	age : int
);
New_Data = UNION Personel,New_Per;
DUMP New_Data; 
