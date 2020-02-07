# basic-laravel-docker

##Command to run the application

  -docker-compose build && docker-compose up -d

if you encounter an error "invalid permission to open file in storage/framework" folder

run the command 

docker exec nginx-test chown -R www-data:root /var/www/html/storage/logs
docker exec nginx-test chmod -R 777 /var/www/html/storage/logs
or
docker exec nginx-test chown -R www-data:root /var/www/html/storage/framework
docker exec nginx-test chmod -R 777 /var/www/html/storage/framework

And if the system told you that "www-data is an invalid user/group" try to run this

sudo docker exec nginx-test adduser -D -H -u 1000 -s /bin/bash -G www-data www-data
