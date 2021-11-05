# nginx-php8-mysql8-mailcatcher-docker-network
Fast lightweight Docker network using PHP MySQL Nginx & Mailcatcher

I use this Docker setup to quickly spin off everything needed for Symfony 5 development.

` docker-compose up`

` docker exec -it php8-container /bin/bash`

`composer create-project symfony/skeleton .` OR
`composer create-project symfony/website-skeleton .`

Visit http://localhost:8080/ and voila. You are ready to go!
