Personel = LOAD '/joinexam/per.csv' USING PigStorage(',') AS
(
	name : chararray,
	age : int,
	dept_id : int
);
Pay = LOAD '/joinexam/pay.csv' USING PigStorage(',') AS
(
	name : chararray,
	pay : int
);
New_Data = JOIN Personel BY name LEFT OUTER, Pay BY name;
DUMP New_Data; 
