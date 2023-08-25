# Base Image from Redhat
FROM redhat/ubi9

# Label Custom Metadata
LABEL org.opencontainers.image.authors Mahedi Sabuj <sabuj.ict.mbstu@gmail.com>
LABEL org.opencontainers.image.source https://github.com/MahediSabuj/aem-docker

# Update All Packages
RUN apt-get update

# Install Java
RUN apt-get install -y openjdk-11-jdk

# Copy AEM Jar, Licence, Start Script
COPY ./src/scripts /mnt/crx/publish

# Change Working Directory
WORKDIR /mnt/crx/publish

# Expose AEM Publish Port
EXPOSE 4503
EXPOSE 9512

# Create Custom Bash Script including Tail Command to Keep the Procss Running
ENTRYPOINT ["./start.sh"]
