FROM node: latest
WORKDIR /AquaTech
COPY /web-data-viz/ /AquaTech/
RUN npm isntall
EXPOSE 8080
CMD ["npm", "start"]
