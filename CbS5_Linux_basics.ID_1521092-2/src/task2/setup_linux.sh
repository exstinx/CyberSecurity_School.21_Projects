# user + группа
groupadd default_users
useradd -m -G default_users user

# secret_users + пользователи
groupadd secret_users
useradd -m -G secret_users secret_agent
useradd -m -G secret_users secret_spy
useradd -m -G secret_users secret_boss

# доступ к домашним директориям
chmod 770 /home/secret_*
chgrp secret_users /home/secret_*

# доступ к /var
chmod 777 /var

# установка apache2 и проверка
apt-get install -y apache2
systemctl status apache2 > apache_status.txt

# sudo без пароля
echo "%default_users ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
