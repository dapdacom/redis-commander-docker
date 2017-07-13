#
# Redis commander docker image
#
# http://github.com/tenstartups/redis-commander-docker
#

FROM node:alpine

LABEL original_maintainer="Marc Lennox <marc.lennox@gmail.com>"
LABEL maintainer="Dapda <sistemas@dapda.com>"

# Set environment variables.
ENV TERM=xterm-color

# Install packages.
RUN apk --no-cache add bash tini

# Install node packages.
RUN npm install -g redis-commander
RUN echo '{}' > /root/.redis-commander

# Define the entrypoint script.
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["tini", "--"]
CMD ["/entrypoint.sh"]

# Expose ports.
EXPOSE 8081
