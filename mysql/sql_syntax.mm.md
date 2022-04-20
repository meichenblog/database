# mysql 常用语句

[在线mysql练习与查询网站](https://www.liaoxuefeng.com/wiki/1177760294764384/1179611432985088)

## 登陆mysql方法
```sql
# 用法
# 本地登陆mysql
mysql -u  用户名  -p # 先敲回车键，再输入密码

# 示例：
mysql -u root -p 

# 远程登陆mysql
mysql -h 远程主机ip  -u 用户名 -p  # 先敲回车键，再输入密码

# 示例：
mysql -h 192.168.1.3 -u root -p 

# 远程登陆指定端口号与数据库
mysql -h 远程主机ip -P 指定端口号  -u 用户名 -p -D 数据库名

# 示例：
mysql -h 192.168.1.3  -P 3306 -u root -p  -D  mysql

```
# mysql 远程mysql开启远程访问权限的方法
```sql
# 登陆mysql数据库
mysql -u root -p
# 查看user表
mysql> use mysql;

# 实现远程连接
mysql> update user set host='%' where user='root';

# 刷新更新后的数据库
mysql> lush privileges;
```

# mysql备份遇到的问题
[作者原文档](https://www.ltsplus.com/mysql/fix-mysqldump-got-error-1044-access-denied-for-user-rootlocalhost-to-database-information_schema-when-using-lock-tables)
```sql
报错信息：mysqldump Access denied …… ‘information_schema’ when using LOCK TABLES
# 解决方法一：
# 加入 --single-transaction 参数, 只要在执行mysqldump 时加入  --single-transaction 参数，便不会出现错误
# 示例如下：mysqldump --single-transcation -u root -p db_name > mysql-bakup.sql
# 解决方法二：
# 先登陆mysql数据库中
mysql -u root -p
# 输入一下指令
mysql> GRANT SELECT,LOCK TABLES ON db_name.* TO 'username'@'localhost';
# 刷新mysql数据库
mysql> flush privileges;
```
[Python 连接 mysql](https://www.w3schools.com/python/python_mysql_create_db.asp)
