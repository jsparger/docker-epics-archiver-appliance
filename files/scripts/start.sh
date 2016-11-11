#!/bin/bash

# wait for mysql container to be ready.
while ! mysqladmin ping --user=archappl --password=archappl -h db --silent; do
	sleep 1
done

# create database
/usr/bin/mysql --user=root --password="archappl" -h db -P 3306 -e "create database if not exists archappl"
/usr/bin/mysql --user="root" --password="archappl" -h db -P 3306 -e "GRANT ALL PRIVILEGES ON archappl.* TO 'archappl'@'%' IDENTIFIED BY 'archappl'"
/usr/bin/mysql --user="archappl" --password="archappl" --database="archappl" -h db -P 3306 < /opt/archappl/scripts/archappl_mysql.sql

# copy settings files
cp /opt/archappl/default/archappl-* /etc/default/.

# start the applications
/etc/init.d/archappl-mgmt start
/etc/init.d/archappl-engine start
/etc/init.d/archappl-etl start
/etc/init.d/archappl-retrieval start

# run bash so we can attach later
/bin/bash