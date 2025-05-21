# Haikal Raditya Fadhilah Personal Portofolio Website

Hello Everyone 👋🏻
This project is a simple website for my personal portfolio as a DevSecOps Engineer, Backend Developer and Application Security Engineer. I deployed this project using Github Pages and a personal domain. And thank you very much Github for providing a free deploy feature without paying btw 🫠. You can also use this project for personal purposes such as building your personal portfolio by simply replacing the content with your data.

## Deployment Requirements

You can do deployment in two ways, namely in a simple way that only requires a web server or can use docker that has been built and can be downloaded on the github container registry.

btw you can check the docker image version of this project on [this link](https://github.com/HaikalRFadhilahh/haik-portofolio-static/pkgs/container/haikportofolio) (Disclaimer: This tutorial only applies to my portfolio / Haikal R Fadhilah. So adjust it to your own needs)

The following tools are required for project deployment:

- Web Server such as Nginx, Apache2, Lighttpd or whatever you like
- Docker Engine (When you Deploy via Docker)

## Deployment Steps

In the deployment stage, it is divided into 2, namely with a web server without docker and using docker :

> ! Attention: This Deployment step is only for Unix-based Operating System (Mac Os/Linux).

<b>Deployment with Web Server Only</b>

Make sure your Unix Operating System is running a Web Server such as Nginx, Apache2, Lighttd, etc.

1. Clone Repostitory to Server

```bash
git clone https://github.com/HaikalRFadhilahh/haik-portofolio-static.git web-portofolio
```

2. Change Directory into Project Folder

```bash
cd web-portofolio
```

3. Move Project to `/var/www/html` or Web Server Folder

```bash
mv * /var/www/html
```

After following the steps above you can access your project at the url http://127.0.0.1 or https://your_ip_public or https://your_domain.

<b>Deployment with Docker Engine</b>

Before you do a Deployment with Docker, always make sure your Server or Local Computer has been installed Docker Enginer according to the Deployment Requirements above.

1. Setting Port for your Project via Unix Variable

```bash
export WEB_PORTOFOLIO_PORT=3000
```

```bash
export WEB_PORTOFOLIO_HOST=127.0.0.1
```

You can customize the port and host to your liking, and make sure the port you choose does not conflict with other processes.

2. Pull Docker Image

```bash
docker pull ghcr.io/haikalrfadhilahh/haikportofolio:latest
```

If you don't want to use the latest version, you can see the documentation for the docker image version of gchr.io/haikalrfadhilahh/haikportofolio at the [following link](https://github.com/HaikalRFadhilahh/haik-portofolio-static/pkgs/container/haikportofolio).

3. Running Docker Image

```bash
docker run --name website-portofolio -p $WEB_PORTOFOLIO_HOST:$WEB_PORTOFOLIO_PORT:80 -d ghcr.io/haikalrfadhilahh/haikportofolio:latest
```

If you do not receive an error you can access your project portfolio page through the host and port you set, or if you use the default configuration above then you can access the following url http://127.0.0.1:3000

## Contributors

You can provide feedback or suggestions that can be implemented into my portfolio through issues in the github feature. You can also use this project to create your own portfolio by changing the content according to your bio or skills.

> ! You can use this Project for personal use for free.

<hr>
<p align="center">© Haikal R Fadhilah 2023. All rights reserved</p>
