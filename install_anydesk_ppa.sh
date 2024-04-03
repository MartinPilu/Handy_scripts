wget https://keys.anydesk.com/repos/DEB-GPG-KEY
gpg --no-default-keyring --keyring ./temp-keyring.gpg --import DEB-GPG-KEY
gpg --no-default-keyring --keyring ./temp-keyring.gpg --export --output anydesk_keyring.gpg
rm temp-keyring.gpg
sudo mv anydesk_keyring.gpg /etc/apt/keyrings/
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
sudo sh -c 'echo "deb [signed-by=/etc/apt/keyrings/anydesk_keyring.gpg] http://deb.anydesk.com/ all main" >> /etc/apt/sources.list.d/anydesk.list'
sudo apt update
sudo apt install anydesk