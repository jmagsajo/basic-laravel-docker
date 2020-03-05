# basic-laravel-docker

<b>Command to run the application</b>
<pre>
docker-compose build && docker-compose up -d
</pre>

<b>Go to src folder and run</b>
<pre>
composer install
</pre>

<b>if you encounter an error "invalid permission to open file in storage/framework" folder</b>

<b>run the command</b>
<pre>
docker exec nginx-test chown -R www-data:root /var/www/html/storage/logs
docker exec nginx-test chmod -R 777 /var/www/html/storage/logs
</pre>
<i>or</i>
<pre>
docker exec nginx-test chown -R www-data:root /var/www/html/storage/framework
docker exec nginx-test chmod -R 777 /var/www/html/storage/framework
</pre>

<b>And if the system told you that "www-data is an invalid user/group" try to run this</b>
<pre>
sudo docker exec nginx-test adduser -D -H -u 1000 -s /bin/bash -G www-data www-data
</pre>

note:
the application is still not perfect, the above fix is temporary
