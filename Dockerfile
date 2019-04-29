FROM siwatinc/nodejsubuntu_base_image
EXPOSE 3006
RUN apt-get update --fix-missing
RUN apt-get update 
CMD wget -nc https://github.com/marcelveldt/roon-extension-api-proxy/archive/master.zip -O /master.zip 
WORKDIR /
CMD unzip master.zip -d /roon-api
WORKDIR /roon-api
RUN ls -l
RUN tar xvfz /master.zip
WORKDIR /roon-api/roon-extension-api-proxy
RUN npm install
RUN node .
