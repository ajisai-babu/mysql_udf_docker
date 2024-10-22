FROM mysql/mysql-server:5.7

ENV MYSQL_ROOT_PASSWORD=root

EXPOSE 3306

ARG PLATFORM=linux/amd64

COPY my.cnf /etc/my.cnf