# Set up PHP, MySQL and PHPMyAdmin in localhost
Copy localdock folder into symfony project root directory

In the localdock folder, run:

```docker-compose up -d php-fpm mysql phpmyadmin```

After dockers properly running, you can go to ``` localhost:8080 ``` to open PHPMyAdmin 

go to ``` localhost:8000 ``` to open PHP Web Server

Config .env file the same as ``` DATABASE_URL=mysql://root:@mysql:3306/default ``` so that Symfony application can connect to MySQL
