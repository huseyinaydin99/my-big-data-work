First = LOAD '/operatorexam/disteticaretlog.csv' USING PigStorage(',') AS
(
	userId : int,
	country : chararray,
	duration : int,
	search : chararray
);
New_Data = DISTINCT First;
DUMP New_Data;
