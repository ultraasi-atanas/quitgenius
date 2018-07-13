CREATE TABLE IF NOT EXISTS salary (
	userId VARCHAR(45) NOT NULL,
	amount DOUBLE UNSIGNED NOT NULL,
	timestamp DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (userId),
	CONSTRAINT FK_salary_userId FOREIGN KEY (userId) REFERENCES user (userId) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB;