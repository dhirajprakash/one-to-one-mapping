CREATE TABLE employees
(
   RECORD_ID  INT NOT NULL AUTO_INCREMENT,
   AGE        INT,
   NAME       VARCHAR(255),
   PRIMARY KEY (RECORD_ID)
)
ENGINE=InnoDB;

CREATE TABLE phones
(
	RECORD_ID  INT  NOT NULL AUTO_INCREMENT,
   	NAME       VARCHAR(255),
   	EMP_ID     INT,
   	PRIMARY KEY (RECORD_ID)
)
ENGINE=InnoDB;

ALTER TABLE phones
  ADD CONSTRAINT FK_28498m2ap6ybm5xn8tce6iwmh FOREIGN KEY (EMP_ID)
  REFERENCES employees (RECORD_ID)
  ON UPDATE NO ACTION
  ON DELETE NO ACTION;