
CREATE DATABASE IF NOT EXISTS `master_mall` CHARACTER SET 'utf8';
GRANT SElECT ON *.* TO 'viewer'@'%' IDENTIFIED BY "456";
STOP SLAVE;
-- RESET SLAVE;
change master to master_host='mysql_master',master_user='rep',master_password='456',master_auto_position=1;
START SLAVE;
SHOW slave status\G;

-- mysql -h 127.0.0.1 -P 3308 -u viewer -p'456'
-- SHOW VARIABLES LIKE '%_query%';
