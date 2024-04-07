FROM node:16

RUN apt-get -y update
RUN apt-get -y install git

RUN mkdir /wavelength

WORKDIR /

RUN git clone https://github.com/Legionofone/wavelength.git

WORKDIR /wavelength

RUN npm install react-scripts

RUN yarn 

EXPOSE 3000

ENTRYPOINT bash
