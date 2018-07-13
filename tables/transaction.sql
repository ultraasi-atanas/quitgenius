CREATE TABLE IF NOT EXISTS transaction (
	transactionId VARCHAR(45) NOT NULL,
	userId VARCHAR(45) NOT NULL,
	productId VARCHAR(45) NOT NULL,
	timestamp DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (transactionId),
	INDEX FK_userId (userId),
	INDEX FK_productId (productId),
	CONSTRAINT FK_productId FOREIGN KEY (productId) REFERENCES product (productId) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FK_userId FOREIGN KEY (userId) REFERENCES user (userId) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB;
