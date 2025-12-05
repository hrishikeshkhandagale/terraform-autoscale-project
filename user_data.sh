#!/bin/bash
yum update -y
amazon-linux-extras install nginx1 -y || yum install nginx -y
systemctl enable nginx
systemctl start nginx

yum install -y git

rm -rf /usr/share/nginx/html/*
git clone "${github_repo_url}" /usr/share/nginx/html

chown -R nginx:nginx /usr/share/nginx/html
chmod -R 755 /usr/share/nginx/html

echo "Deployed version: ${app_version}" > /usr/share/nginx/html/_version.txt

systemctl restart nginx
