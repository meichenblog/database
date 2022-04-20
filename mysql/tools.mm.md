# mysql 常用语句

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
