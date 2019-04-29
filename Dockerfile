FROM siwatinc/nodejsubuntu_base_image
EXPOSE 3006
RUN apt-get update --fix-missing
CMD apt-get update && wget -nc https://github.com/marcelveldt/roon-extension-api-proxy/archive/master.zip -O "/master.zip" 
WORKDIR /
CMD unzip master.zip -d /roon-api
WORKDIR /roon-api
CMD ls -l
RUN npm install
RUN node .
