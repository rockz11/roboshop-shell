cp mongodb.repo /etc/yum.repos.d/mongodb.repo
dnf install mongodb-org -y
sed -i -e 's/127.0.0.0/0.0.0.0/' /etc/mondob.conf
systemctl enable mongod
systemctl start mongod
