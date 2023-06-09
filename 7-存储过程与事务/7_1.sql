use fib;

-- 创建存储过程`sp_fibonacci(in m int)`，向表fibonacci插入斐波拉契数列的前m项，及其对应的斐波拉契数。fibonacci表初始值为一张空表。请保证你的存储过程可以多次运行而不出错。

drop procedure if exists sp_fibonacci;
delimiter $$
create procedure sp_fibonacci(in m int)
begin
######## 请补充代码完成存储过程体 ########
  DECLARE a INT DEFAULT 0;
  DECLARE b INT DEFAULT 1;
  DECLARE i INT DEFAULT 0;
  
  TRUNCATE TABLE fibonacci;
  
  WHILE i < m DO
    INSERT INTO fibonacci VALUES (i, a);
    SET b = a + b;
    SET a = b - a;
    SET i = i + 1;
  END WHILE;


end $$

delimiter ;

 
