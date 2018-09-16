1. 使用mysqldump可以将数据库备份成sql, 在命令行中直接执行如下语句：
  1.1 导出整个数据库
    mysqldump -u USER_NAME -p DATABASE_NAME > FULL_PATH/FILE.sql
  1.2 导出某个表 
    mysqldump -u USER_NAME -p DATABASE_NAME TABLE_NAME > FULL_PATH/FILE.sql
 
2. disable mysql safe update mode 
    SET SQL_SAFE_UPDATES = 0;
    
