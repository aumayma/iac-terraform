#!/bin/bash
sudo apt update
sudo apt install -y nginx
echo "<h1>Hello from Terraform server 🧡</h1>" > /var/www/html/index.html
