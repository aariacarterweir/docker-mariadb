# Extend the latest ubuntu image
FROM mariadb/server:latest

# Install pv
RUN apt-get update
RUN apt-get install pv

# add bot token
RUN sed -i "/^bind-address/d" /etc/mysql/my.cnf

EXPOSE 3306
