First = LOAD '/operatorexam/disteticaretlog.csv' USING PigStorage(',') AS
(
	userId : int,
	country : chararray,
	duration : int,
	search : chararray
);
Gr_Data = GROUP First BY country;
Result_Data = FOREACH Gr_Data{
generate
group,
AVG(First.duration);
}
DUMP Result_Data;
