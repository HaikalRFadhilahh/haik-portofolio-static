# Import Base Image Nginx
FROM nginx:1.28.0-alpine3.21 AS runtime

# Docker Image Labels
LABEL maintainer="haikal.fadhilah13@gmail.com"\
    org.opencontainers.image.author="Haikal R Fadhilah" \
    org.opencontainers.image.title="Portofolio Haikal Raditya Fadhilah" \
    org.opencontainers.image.version="1.0" \
    org.opencontainers.image.description="Haikal Raditya Fadhilah Personal Portofolio as Backend Developer and DevSecOps Engineer"

# Setting Working Directory
WORKDIR /var/www/html

# Copy Nginx Configuration 
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

# Copy Source Code
COPY . .

# Health Check Application
HEALTHCHECK --interval=60s --timeout=15s --start-period=7s --retries=3 CMD curl -f -X GET http://127.0.0.1:80 &> /dev/null || exit 1

# Expose Port
EXPOSE 80