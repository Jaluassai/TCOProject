#!/bin/bash

rm /etc/nginx/sites-available/default
rm /etc/nginx/nginx.conf


cp /vagrant/cfg/loadbalancer.conf /etc/nginx/conf.d/
cp /vagrant/cfg/nginx.conf /etc/nginx/

systemctl restart nginx