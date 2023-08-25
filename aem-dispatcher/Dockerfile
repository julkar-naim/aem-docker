# Base Image from Redhat
FROM redhat/ubi9

# Label Custom Metadata
LABEL org.opencontainers.image.authors Mahedi Sabuj <sabuj.ict.mbstu@gmail.com>
LABEL org.opencontainers.image.source https://github.com/MahediSabuj/aem-docker

# Install HTTPD
RUN yum update -y && yum install -y httpd && && yum clean all

# Remove default config
RUN rm -rf /etc/httpd/conf/* && rm -rf /etc/httpd/conf.d/* && rm -rf /etc/httpd/conf.modules.d/*

# Copy the AMS base files into the image.
COPY src/etc/httpd /etc/httpd

# Install dispatcher
ARG TARGETARCH
COPY scripts/setup.sh /
RUN chmod +x /setup.sh
# Ensuring correct file ending on windows systems
RUN sed -i -e 's/\r\n/\n/' /setup.sh
RUN ./setup.sh
RUN rm /setup.sh

COPY scripts/launch.sh /
# Ensuring correct file ending on windows systems
RUN sed -i -e 's/\r\n/\n/' /launch.sh
RUN chmod +x /launch.sh

# Expose Port
EXPOSE  80 443

# Start container
ENTRYPOINT ["/bin/bash","/launch.sh"]
