#!/bin/bash

repository=hvnl-sf54

git clone https://github.com/henryvoorburg/${repository}.git .

composer install

php bin/console doctrine:database:create

php bin/console doctrine:schema:update --force

php bin/console c:c