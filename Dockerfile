FROM siwatinc/nodejsubuntu_base_image
EXPOSE 3006
EXPOSE 8080
RUN apt-get update --fix-missing
RUN apt-get update 
RUN wget https://github.com/marcelveldt/roon-extension-api-proxy/archive/master.zip -O /master.zip 
WORKDIR /
RUN git clone https://github.com/pluggemi/roon-web-controller.git
WORKDIR roon-web-controller
RUN npm install
RUN node app.js
WORKDIR /
RUN unzip master.zip -d /roon-api
WORKDIR /roon-api/roon-extension-api-proxy-master
RUN npm install
CMD node .
