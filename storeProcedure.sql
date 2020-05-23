DELIMITER $$
drop procedure procedureName $$
CREATE PROCEDURE procedureName()
BEGIN
/*Xu ly*/
  DECLARE a INT (11) DEFAULT 0;
  DECLARE b INT (11) DEFAULT 0;
  DECLARE tong INT (11) DEFAULT 0;
  SET a = 2;
  SET b = 3;
  SET tong = a + b;
  SELECT tong;

select *from orders; 
END; $$
DELIMITER ;

call procedureName();