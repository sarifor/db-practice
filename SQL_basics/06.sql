/* JOIN */
SELECT * FROM zerocho.employee JOIN zerocho.role;

/* JOIN ON (INNER JOIN) */
SELECT * FROM zerocho.employee JOIN zerocho.role 
ON zerocho.employee.role_id = zerocho.role.id;

/* SELECT로 원하는 필드만 추리기 (ambiguous) */
SELECT id, name, email, team, min_salary /* Error Code: 1052. Column 'id' in field list is ambiguous */
FROM zerocho.employee JOIN zerocho.role 
ON zerocho.employee.role_id = zerocho.role.id;

/* SELECT로 원하는 필드만 추리기 (명확) */
SELECT employee.id, employee.name as `employee name`, email, team, role.name as `role name`, min_salary
FROM zerocho.employee JOIN zerocho.role 
ON zerocho.employee.role_id = zerocho.role.id;

/* 테이블에 별명 붙이기 */
SELECT e.id, e.name as `employee name`, email, team, r.name as `role name`, min_salary
FROM zerocho.employee e JOIN zerocho.role r 
ON e.role_id = r.id;

/* INNER JOIN하고 원하는 필드만 추린 상태에서, 직책으로 그룹 지어 직책별 평균 연봉, 최소 연봉 표시하기 */
SELECT r.name as `role name`, avg(salary), min_salary
FROM zerocho.employee e JOIN zerocho.role r
ON e.role_id = r.id GROUP BY r.id;