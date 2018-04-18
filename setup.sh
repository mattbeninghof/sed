# Add the Sensu Core YUM repository
echo '[sensu]
name=sensu
baseurl=https://sensu.global.ssl.fastly.net/yum/$releasever/$basearch/
gpgcheck=0
enabled=1' | tee /etc/yum.repos.d/sensu.repo

# Add the Sensu Enterprise YUM repository
echo "[sensu-enterprise]
name=sensu-enterprise
baseurl=http://$SE_USER:$SE_PASS@enterprise.sensuapp.com/yum/noarch/
gpgcheck=0
enabled=1" | tee /etc/yum.repos.d/sensu-enterprise.repo

# Add the Sensu Enterprise Dashboard YUM repository
echo "[sensu-enterprise-dashboard]
name=sensu-enterprise-dashboard
baseurl=http://$SE_USER:$SE_PASS@enterprise.sensuapp.com/yum/\$basearch/
gpgcheck=0
enabled=1" | tee /etc/yum.repos.d/sensu-enterprise-dashboard.repo

# Add the EPEL repositories (for installing Redis)
rpm -Uvh https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm

# Install our packages
yum update
yum install -y curl jq nc vim nagios-plugins-all nginx redis sensu sensu-enterprise sensu-enterprise-dashboard
systemctl stop firewalld
systemctl disable firewalld

# Update Redis "bind" and "protected-mode" configs to allow external connections
sed -i 's/^bind 127.0.0.1/bind 0.0.0.0/' /etc/redis.conf
sed -i 's/^protected-mode yes/protected-mode no/' /etc/redis.conf

# Copy Sensu configuration files
cp -r /vagrant/files/* /etc/sensu/
chmod +x /etc/sensu/plugins/*
chown -R sensu:sensu /etc/sensu

# Configure the shell
echo 'export PS1="demo $ "' >> ~/.bash_profile
echo 'alias l="pwd"' >> ~/.bashrc
echo 'alias ll="ls -Flag --color=auto"' >> ~/.bashrc

# Enable services to start on boot
systemctl start nginx
systemctl start redis
systemctl enable redis
systemctl start sensu-client
systemctl enable sensu-client
systemctl start sensu-enterprise
chkconfig sensu-enterprise on
systemctl start sensu-enterprise-dashboard
chkconfig sensu-enterprise-dashboard on

# Print the VM IP Address and exit
echo
echo "This demo VM is up and running with the following network interfaces:"
ip address
echo "Happy Sensu-ing!"
