# mysql_udf_docker

mysql udf 提权docker环境
使用方法
```
docker build -t mysql_udf .

docker run -d -p 3306:3306 --name=mysql_udf mysql_udf
```
