#!/bin/bash

rm /etc/nginx/nginx.conf

cp /vagrant/cfg/nginx.conf /etc/nginx/
cp /vagrant/cfg/web.conf /etc/nginx/conf.d/
cp /vagrant/GuessTheNumber /srv/ -r

systemctl restart nginx