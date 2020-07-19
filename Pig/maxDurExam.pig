First = LOAD '/operatorexam/disteticaretlog.csv' USING PigStorage(',') AS
(
	userId : int,
	country : chararray,
	duration : int,
	search : chararray
);
Gr_Data = GROUP First BY country;
New_Data = FOREACH Gr_Data{
generate
group,
	MAX(First.duration) AS maxDurTime;
}
DUMP New_Data;
