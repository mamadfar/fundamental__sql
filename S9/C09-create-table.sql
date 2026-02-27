CREATE DATABASE IF NOT EXISTS mydb;
USE mydb;

CREATE TABLE first_table(
id INT,
firstname VARCHAR(45),
lastname VARCHAR(45)
);

DROP TABLE first_table;

DROP TABLE IF EXISTS second_table;
CREATE TABLE IF NOT EXISTS second_table(
	id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(45),
    lastname VARCHAR(45)
) ENGINE=InnoDB DEFAULT CHARACTER SET = utf8mb4 COLLATE utf8mb4_0900_ai_ci;

INSERT INTO second_table(firstname, lastname) VALUES
			('عباس', 'مقدم'), ('کاوه', 'رایگان'), ('سعید', 'جیدری'),
            ('ژاله', 'پالیزدار'), ('کامبیز', 'گوهری'), ('چنگیزخان', 'مغول'),
            ('محمد', 'فرهادی'), ('امیر', 'مقدم'), ('اسماعیل', 'عباسی'),
            ('ali', 'Mohammadi'), ('Reza', 'salehi'), ('Sadra', 'Kazemi');