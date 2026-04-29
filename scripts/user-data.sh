#!/bin/bash

# Update system
yum update -y

# Install nginx
yum install -y nginx

# Start nginx
systemctl start nginx
systemctl enable nginx

# Replace default page
cat <<EOF > /usr/share/nginx/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>NLB App</title>
</head>
<body style="text-align:center; font-family:Arial;">
    <h1>🚀 NLB + Auto Scaling App</h1>
    <p>Instance is running successfully</p>
    <p>Instance ID: $(curl http://169.254.169.254/latest/meta-data/instance-id)</p>
</body>
</html>
EOF
