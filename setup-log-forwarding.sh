#!/bin/bash

echo "Installing prerequisites..."
sudo apt-get update -y
sudo apt-get install -y openjdk-11-jre wget curl

echo "Installing Logstash..."
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo sh -c 'echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" > /etc/apt/sources.list.d/elastic-7.x.list'
sudo apt-get update && sudo apt-get install -y logstash

echo "Setting up configuration files..."
mkdir -p /etc/logstash/conf.d/
curl -o /etc/logstash/conf.d/logstash.conf https://raw.githubusercontent.com/softwares-compound/Client-Cd-109/main/logstash.conf

echo "Setting up Logstash service..."
sudo systemctl enable logstash

echo "Starting Logstash service..."
sudo systemctl start logstash
sudo systemctl status logstash

echo "Log forwarding setup completed!"
