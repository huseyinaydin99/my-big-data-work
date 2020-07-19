Departman = LOAD '/joinexam/depth.csv' USING PigStorage(',') AS
(
	dept_id : int,
	dept_name : chararray
);
Personel = LOAD '/joinexam/per.csv' USING PigStorage(',') AS
(
	name : chararray,
	age : int,
	dept_id : int,
	search : chararray
);
New_Data = JOIN Personel BY dept_id, Departman BY dept_id;
DUMP New_Data; 
