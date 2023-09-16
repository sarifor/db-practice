# SQL imported into ERDCloud

CREATE TABLE `role` (
	`id`	int	NOT NULL	COMMENT 'Role ID',
	`name`	varchar(10)	NOT NULL	COMMENT 'Role Name',
	`min_salary`	int	NOT NULL	DEFAULT '2500'	COMMENT 'Minimum Salary'
);

CREATE TABLE `employee_info` (
	`id`	int	NOT NULL,
	`address`	varchar(100)	NULL,
	`etc`	text	NULL,
);

CREATE TABLE `employee` (
	`id`	int	NOT NULL,
	`name`	varchar(45)	NOT NULL,
	`email`	varchar(100)	NOT NULL,
	`salary`	int	NOT NULL,
	`team`	varchar(20)	NOT NULL,
	`quit_date`	date	NULL,
	`created_at`	datetime	NULL,
	`role_id`	int	NOT NULL	COMMENT 'Role ID'
);

ALTER TABLE `role` ADD CONSTRAINT `PK_ROLE` PRIMARY KEY (
	`id`
);

ALTER TABLE `employee` ADD CONSTRAINT `PK_EMPLOYEE` PRIMARY KEY (
	`id`
);

ALTER TABLE `employee` ADD CONSTRAINT `FK_role_TO_employee_1` FOREIGN KEY (
	`role_id`
)
REFERENCES `role` (
	`id`
);



# SQL exported from ERDCloud after adding relationships

CREATE TABLE `role` (
	`id`	int	NOT NULL	COMMENT 'Role ID',
	`name`	varchar(10)	NOT NULL	COMMENT 'Role Name',
	`min_salary`	int	NOT NULL	DEFAULT '2500'	COMMENT 'Minimum Salary'
);

CREATE TABLE `employee` (
	`id`	int	NOT NULL,
	`name`	varchar(45)	NOT NULL,
	`email`	varchar(100)	NOT NULL,
	`salary`	int	NOT NULL,
	`team`	varchar(20)	NOT NULL,
	`quit_date`	date	NULL,
	`created_at`	datetime	NULL,
	`role_id`	int	NOT NULL	COMMENT 'Role ID'
);

CREATE TABLE `employee_info` (
	`id`	int	NOT NULL,
	`address`	varchar(100)	NULL,
	`etc`	text	NULL
);

ALTER TABLE `role` ADD CONSTRAINT `PK_ROLE` PRIMARY KEY (
	`id`
);

ALTER TABLE `employee` ADD CONSTRAINT `PK_EMPLOYEE` PRIMARY KEY (
	`id`
);

ALTER TABLE `employee_info` ADD CONSTRAINT `PK_EMPLOYEE_INFO` PRIMARY KEY (
	`id`
);

ALTER TABLE `employee` ADD CONSTRAINT `FK_role_TO_employee_1` FOREIGN KEY (
	`role_id`
)
REFERENCES `role` (
	`id`
);

ALTER TABLE `employee_info` ADD CONSTRAINT `FK_employee_TO_employee_info_1` FOREIGN KEY (
	`id`
)
REFERENCES `employee` (
	`id`
);