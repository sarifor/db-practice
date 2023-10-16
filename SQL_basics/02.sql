/* count, avg, min, max, sum */
SELECT count(*) FROM zerocho.employee;
SELECT avg(salary) FROM zerocho.employee where team = "dev";
SELECT min(salary) FROM zerocho.employee where team = "dev";
SELECT max(salary) FROM zerocho.employee where team = "dev";
SELECT sum(salary) FROM zerocho.employee where team = "dev";

/* Alias */
SELECT max(salary) as "Total Amount" FROM zerocho.employee where team = "dev";
SELECT max(salary) as "Total Amount" FROM zerocho.employee `newtablename` where team = "dev"; /* For join */

/* Select nonaggregated column -> No */
/* Error Code: 1140. In aggregated query without GROUP BY, expression #2 of SELECT list contains nonaggregated column 'zerocho.newtablename.id';  */
/* this is incompatible with sql_mode=only_full_group_by	0.000 sec */
SELECT max(salary) as "Total Amount", id FROM zerocho.employee `newtablename` where team = "dev";

/* Select temporary column -> OK */
SELECT sum(salary) as "Total Amount", 10 as 'column' FROM zerocho.employee `newtablename` where team = "dev";

/* ORDER */
SELECT * FROM zerocho.employee WHERE team = "dev" ORDER BY salary ASC;
SELECT * FROM zerocho.employee WHERE team = "dev" ORDER BY salary; /* ASC is default */
SELECT * FROM zerocho.employee WHERE team = "dev" ORDER BY salary DESC;
SELECt * FROM zerocho.employee WHERE team = "dev" ORDER BY salary DESC, role_id ASC;
