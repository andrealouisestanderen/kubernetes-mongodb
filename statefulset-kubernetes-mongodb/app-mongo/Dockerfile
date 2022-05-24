#
# MongoDB Dockerfile
#
# https://github.com/dockerfile/mongodb
#

# Pull base image.
FROM mongo:4.2

# Install MongoDB.
RUN \
  apt-get update && \
  apt-get install -y iproute2 && \
  apt-get install -y net-tools && \
  apt-get install -y dnsutils

# Define mountable directories.
# VOLUME ["/data/db"]
# Skip because its done from sts yaml

# Define working directory.
# WORKDIR /data
# Skip because its done from sts yaml

# Define default command.
CMD ["mongod"]

# Expose ports.
#   - 27017: process
#   - 28017: http
EXPOSE 27017
EXPOSE 28017 

