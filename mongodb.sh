cp mongodb.repo /etc/yum.repos.d/mongodb.repo
dnf install mongodb-org -y
vim /etc/mongod.conf
sed -i -e 's/127.0.0.0/0.0.0.0/' /etc/mongodb.conf
systemctl enable mongod
systemctl start mongod
