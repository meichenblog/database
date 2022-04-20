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
