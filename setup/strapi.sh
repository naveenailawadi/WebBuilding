# https://strapi.io/blog/how-to-deploy-a-strapi-application

# update npx
npm update npx

# install nodejs
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt-get install -y nodejs

# create a production-level strapi app for the cms
npx create-strapi-app@latest cms

# install the dependencies
cd cms
npm install --production

# go out of the app
cd ..

# install pm2 (globally with -g)
npm install pm2 -g

# start the server
NODE_ENV=production pm2 start server.js --name cms

# get nginx to host
sudo apt-get update
sudo apt-get install -y nginx

# continue here with the information from the docs
