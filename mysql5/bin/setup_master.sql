
CREATE DATABASE IF NOT EXISTS `master_mall` CHARACTER SET 'utf8';
CREATE user 'rep'@'%' IDENTIFIED BY '456';
GRANT replication slave,replication client on *.* TO 'rep'@'%';

-- mysql -h 127.0.0.1 -P 3307 -u rep -p'456'
