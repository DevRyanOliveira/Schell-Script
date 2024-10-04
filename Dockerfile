FROM node:latest
WORKDIR /AquaTech
COPY /web-data-viz/ /AquaTech/
RUN npm install
EXPOSE 8080
CMD ["npm", "start"]
