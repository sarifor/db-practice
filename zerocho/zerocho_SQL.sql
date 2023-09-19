/* SELECT */
SELECT name FROM zerocho.employee;
SELECT * FROM zerocho.employee; /* Select all columns */

/* WHERE */
SELECT * FROM zerocho.employee WHERE team = "dev";
SELECT * FROM zerocho.employee WHERE team = "dev" AND salary >= 6000;
SELECT * FROM zerocho.employee WHERE team = "dev" AND salary <> 8000;
SELECT * FROM zerocho.employee WHERE team = "dev" AND salary != 8000;

/* To null */
SELECT * FROM zerocho.employee WHERE team = "dev" AND quit_date = null; /* no result */
SELECT * FROM zerocho.employee WHERE team = "dev" AND quit_date IS null;
SELECT * FROM zerocho.employee WHERE team = "dev" AND quit_date IS NOT null;

/* Parentheses */
SELECT * FROM zerocho.employee WHERE team = "dev" AND created_at >= '2023-08-21 17:43:43';
SELECT * FROM zerocho.employee WHERE team = "dev" AND created_at BETWEEN '2023-08-21 17:43:02' AND '2023-08-21 17:43:43'; /* Confused whether the second AND is paired with BETWEEN.*/
SELECT * FROM zerocho.employee WHERE team = "dev" AND (created_at BETWEEN '2023-08-21 17:43:02' AND '2023-08-21 17:43:43');

/* OR */
SELECT * FROM zerocho.employee WHERE team = "dev" OR team = "design";
SELECT * FROM zerocho.employee WHERE team = "dev" OR team = "design" AND salary < 600; /* Confused */
SELECT * FROM zerocho.employee WHERE team = "dev" OR (team = "design" AND salary < 600); /* Same with above */
SELECT * FROM zerocho.employee WHERE (team = "dev" OR team = "design") AND salary < 600;