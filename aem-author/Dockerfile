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
COPY ./src /mnt/crx/author

# Change Working Directory
WORKDIR /mnt/crx/author

# Expose AEM Author Port
EXPOSE 4502
EXPOSE 9511

# Create Custom Bash Script including Tail Command to Keep the Procss Running
ENTRYPOINT ["./start.sh"]
