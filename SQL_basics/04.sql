/* LIMIT, OFFSET */
SELECT * FROM zerocho.employee WHERE team = "dev";
SELECT * FROM zerocho.employee WHERE team = "dev" LIMIT 2; /* 처음부터 2개 */
SELECT * FROM zerocho.employee WHERE team = "dev" LIMIT 2 OFFSET 2; /* 처음부터 2개, 2번째 것부터 가져옴(0부터 시작) */

/* cursor 방식 */
SELECT * FROM zerocho.employee WHERE team = "dev" AND id < 6 LIMIT 2;
