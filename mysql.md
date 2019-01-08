MariaDB [(none)]> set password for 'x'@'localhost' = password('password');
MariaDB [(none)]> show grants for 'x'@'localhost';
MariaDB [(none)]> grant usage on *.* to 'x'@'localhost'; -- USAGE = no privileges
MariaDB [(none)]> GRANT ALL PRIVILEGES ON `secmon`.* TO 'x'@'localhost';
MariaDB [(none)]> flush privileges;

