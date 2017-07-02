# Base the image on a stable branch of Node.js
FROM hypriot/rpi-node:6.10.0-slim


# Install node red
RUN npm install -g --unsafe-perm node-red

# Set up 
RUN mkdir -p /node-red/user-dir
COPY start-node-red.sh /node-red
RUN chmod u+x /node-red/start-node-red.sh
COPY settings.js /node-red/

# VOLUME /node-red/user-dir
EXPOSE 1880

#CMD /node-red/start-node-red.sh
