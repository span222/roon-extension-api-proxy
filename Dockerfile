FROM siwatinc/nodejsubuntu_base_image
EXPOSE 3006
RUN apt-get update --fix-missing
CMD apt-get update && wget -nc https://github.com/marcelveldt/roon-extension-api-proxy/archive/master.zip -O "/roon-api/master.zip" || : && unzip /roon-api/master.zip 
WORKDIR /roon-api
RUN npm install
RUN node .
