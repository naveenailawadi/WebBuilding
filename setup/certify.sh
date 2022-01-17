sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository universe
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update

sudo apt-get install certbot python3-certbot-apache
sudo certbot --apache

# resource: https://certbot.eff.org/lets-encrypt/ubuntuxenial-apache
