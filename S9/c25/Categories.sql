CREATE DATABASE IF NOT EXISTS mydb;
USE mydb;

DROP TABLE IF EXISTS categories;
CREATE TABLE categories(
	id INT PRIMARY KEY AUTO_INCREMENT,
    cat_name VARCHAR(50),
    parent_id INT,
    
    FOREIGN KEY (parent_id) REFERENCES categories(id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO categories(id ,cat_name, parent_id) VALUES
		(1 , 'Science' , NULL),(2 , 'Art' , NULL),(3 , 'Sports' , NULL),
        (4 , 'Physics' , 1),(5 , 'Computer Science' , 1),(6 , 'Mathematics' , 1),
        (7 , 'Electromagnetism' , 4),(8 , 'Thermodynamics' , 4),(9 , 'Astronomy' , 4),
        (10 , 'Programming' , 5),(11 , 'Algorithms' , 5),(12 , 'Networking' , 5),
        (13 , 'Differential Equations' , 6),(14 , 'Statistics' , 6),(15 , 'Algebra' , 6),
        (16 , 'Musics' , 2),(17 , 'Cooking' , 2),(18 , 'Movies' , 2),
        (19 , 'Horror' , 18),(20 , 'Science fiction' , 18),(21 , 'Action' , 18),
        (22, 'Football' , 3),(23 , 'Basketball' , 3),(24 , 'Valleyball' , 3);

