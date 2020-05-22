# Extend the latest ubuntu image
FROM mariadb/server:latest

# add bot token
RUN sed -i "/^bind-address/d" /etc/mysql/my.cnf

EXPOSE 3306
