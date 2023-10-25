/* GROUP BY */
SELECT count(*) as `count`, salary FROM zerocho.employee GROUP BY salary;
SELECT avg(salary) as `avg`, team FROM zerocho.employee GROUP BY team;
SELECT max(salary) as `max`, team FROM zerocho.employee GROUP BY team;
SELECT min(salary) as `max`, team FROM zerocho.employee GROUP BY team;
SELECT sum(salary) as `max`, team FROM zerocho.employee GROUP BY team;

/* HAVING */
SELECT sum(salary) as `max`, team FROM zerocho.employee GROUP BY team HAVING team = 'dev';
SELECT sum(salary) as `sum`, team FROM zerocho.employee WHERE salary > 5000 GROUP BY team;

/* WHERE */
SELECT sum(salary) as `sum`, team FROM zerocho.employee WHERE salary > 5000 GROUP BY team; /* 그룹과 관련없는 조건은 WHERE에 줌 */

/* Use GROUP BY vs. Not */
SELECT sum(salary) as `sum`, team FROM zerocho.employee WHERE salary > 5000 GROUP BY team;
SELECT salary, team FROM zerocho.employee WHERE salary > 5000;

/* GROUP BY Foreign Key */
SELECT avg(salary) as `avg`, role_id FROM zerocho.employee GROUP BY role_id; /* 직책별 평균 연봉 */