# Base Image from Redhat
FROM redhat/ubi9

# Label Custom Metadata
LABEL org.opencontainers.image.authors Mahedi Sabuj <sabuj.ict.mbstu@gmail.com>
LABEL org.opencontainers.image.source https://github.com/MahediSabuj/aem-docker

# Update All Packages
RUN yum update -y

# Install Java
RUN yum install -y java-11-openjdk httpd

# Copy Dispatcher files
COPY ./src /etc/httpd

# Expose AEM Publish Port
EXPOSE 80

# Start Apache Server including Tail Command to Keep the Procss Running
CMD /sbin/httpd -k start && tail -F /var/log/httpd/error_log
