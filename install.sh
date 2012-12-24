#!/bin/bash
echo 'Welcome to RailsStrap v0.2 install'
echo 
echo '-- Press some key to continue --'
read key

echo 'Type your root password to procede (We will just update your bundle)'
sudo bundle install && sudo bundle update

echo '... Creating your database ...'
rake db:create
rake db:migrate

echo '... Database created. Starting server ... '
rails s

