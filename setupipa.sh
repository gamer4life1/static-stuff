apt update
apt install -y freeipa-client


cat <<EOT >> /etc/ssh/sshd_config
AuthorizedKeysCommand /usr/bin/sss_ssh_authorizedkeys
AuthorizedKeysCommandUser root
EOT


systemctl restart sshd

echo "now run ipa-client-install --mkhomedir --no-ntp"
