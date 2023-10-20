SELECT count(*) as `count`, salary FROM zerocho.employee GROUP BY salary;
SELECT avg(salary) as `avg`, team FROM zerocho.employee GROUP BY team;
SELECT max(salary) as `max`, team FROM zerocho.employee GROUP BY team;
SELECT min(salary) as `max`, team FROM zerocho.employee GROUP BY team;
SELECT sum(salary) as `max`, team FROM zerocho.employee GROUP BY team;
SELECT sum(salary) as `max`, team FROM zerocho.employee GROUP BY team HAVING team = 'dev';