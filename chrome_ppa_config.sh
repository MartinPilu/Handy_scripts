wget https://dl.google.com/linux/linux_signing_key.pub
gpg --no-default-keyring --keyring ./temp-keyring.gpg --import linux_signing_key.pub
gpg --no-default-keyring --keyring ./temp-keyring.gpg --export --output chrome_keyring.gpg
rm temp-keyring.gpg
sudo mv chrome_keyring.gpg /etc/apt/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/chrome_keyring.gpg] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update
sudo apt install google-chrome-stable 