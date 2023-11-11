/* LEFT JOIN */
USE zerocho;
SELECT * FROM employee e LEFT JOIN employee_project ep ON e.id = ep.employee_id;

/* RIGHT JOIN */
USE zerocho;
SELECT * FROM employee e RIGHT JOIN employee_project ep ON e.id = ep.employee_id;

/* 연달아 JOIN */
USE zerocho;
SELECT * FROM employee e 
LEFT JOIN employee_project ep ON e.id = ep.employee_id
LEFT JOIN project p ON ep.project_id = p.id;

/* 헷갈리면 앞의 JOIN을 괄호로 묶기 */
USE zerocho;
SELECT * FROM (employee e 
LEFT JOIN employee_project ep ON e.id = ep.employee_id)
LEFT JOIN project p ON ep.project_id = p.id;

/* 테이블들을 JOIN해 놓고, 필요한 컬럼만 SELECT */
USE zerocho;
SELECT e.name as 'Employee name', p.name as 'Project name' FROM (employee e 
LEFT JOIN employee_project ep ON e.id = ep.employee_id)
LEFT JOIN project p ON ep.project_id = p.id;