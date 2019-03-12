# create user and allow access to db
CREATE USER 'x'@'localhost' IDENTIFIED BY 'password';
CREATE DATABASE terc;
GRANT ALL ON terc.* TO 'x'@'localhost';

# change password 
MariaDB [(none)]> set password for 'x'@'localhost' = password('password');

# show access
MariaDB [(none)]> show grants for 'x'@'localhost';

# change access
MariaDB [(none)]> grant usage on *.* to 'x'@'localhost'; -- USAGE = no privileges
MariaDB [(none)]> GRANT ALL PRIVILEGES ON `secmon`.* TO 'x'@'localhost';
MariaDB [(none)]> flush privileges;

