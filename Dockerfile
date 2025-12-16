FROM mysql/mysql-server:5.7

COPY my.cnf /etc/my.cnf

RUN mkdir -p /docker-entrypoint-initdb.d && \
    echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root' WITH GRANT OPTION;" > /docker-entrypoint-initdb.d/init.sql && \
    echo "FLUSH PRIVILEGES;" >> /docker-entrypoint-initdb.d/init.sql
