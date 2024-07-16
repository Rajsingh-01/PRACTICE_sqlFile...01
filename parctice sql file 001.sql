create database chetu;
use chetu;
CREATE TABLE test85 (
    id INT PRIMARY KEY,
    parentid INT,
    name VARCHAR(50)
);
drop table test85;
-- Insert 10 records
INSERT INTO test85 (id, parentid, name) VALUES
(1, NULL, 'Abhishek'),
(2, 1, 'Nitish'),
(3, 2, 'Jain'),
(4, 3, 'Sumit'),
(5, 4, 'Sunflower'),
(6, 5, 'Lily'),
(7, 6, 'HENERY'),
(8, 7, 'Green House'),
(9, 8, 'Blackpanther'),
(10, 9, 'Pawan singh'),
-- 2nd question
(11, 10, 'Shivay Singh'),
(12, 11, 'Raj singh'),
(13, 12, 'harry'),
(14, 13, 'bhawan'),
(15, 14, 'Lucifer'),
(16, 15, 'morningstar'),
(17, 16, 'Kedarnath'),
(18, 17, 'mahadev'),
(19, 18, 'Hanuman'),
(20, 19, 'House');
-- Create a stored procedure to select the first record
CREATE PROCEDURE hello(IN input_test85id INT)

    SELECT id, parentid, name FROM test85  WHERE parentid IS NULL;
drop procedure hello;

-- Call the stored procedure with any studentid (this will always return John Doe)
CALL hello(1);
select*from test85;



-- second method as 11
-- Create a stored procedure to select the first record or specific names
DELIMITER //
begin;
    IF input_test85 BETWEEN 11 AND 20 THEN
        SELECT name
        FROM test85
        WHERE id = input_test85id;
    ELSE
        SELECT testid, parentid, name
        FROM test85
        WHERE parentid IS NULL;
    END IF;
END //
DELIMITER ;

-- Call the stored procedure with a studentid (example: 5)
CALL hello(5);

-- Call the stored procedure with a studentid (example: 12)
CALL hello(15);



