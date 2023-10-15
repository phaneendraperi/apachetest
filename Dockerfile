# Use the official CentOS 7 base image
FROM centos:7

# Update the package repository and install Apache
RUN yum -y update && \
    yum -y install httpd && \
    yum clean all

# Create a sample index.html file
RUN echo "Hello, Apache on CentOS!" > /var/www/html/index.html

# Expose port 80 to the host
EXPOSE 80

# Start the Apache service in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
