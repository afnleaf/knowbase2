# How to Self Host a Webserver on the Cloud

## Cloud services setup
1. Deploy a Linux server using your preferred Cloud provider.
2. Point your domain to the server using your preferred DNS provider. You will need to know your server IP, this will be found somewhere in your Cloud providers interface.
3. SSH into the server.
4. Update the server and install docker. Check the docker website for your Linux distribution installation specifics.
5. Clone, build and run your repo. 
```
git clone https://github.com/username/reponame.git
docker compose build --no-cache
docker-compose up -d
```
6. Make sure your repo works. `docker exec -it <container_name> bash`

## Network stuff
7. Install NGINX & Certbot. `apt install nginx certbot`
8. Open port 80 to allow for SSL creation. `ufw allow 80`
9. Stop the NGINX service. `systemctl stop nginx`
10. Prepare SSL for generation `certbot certonly --standalone -d <your_domain_name>`
11. Create DH Params and generate the SSL. (The larger the last number is the more secure the server is BUT the longer it takes to generate) `openssl dhparam -out /etc/ssl/certs/dhparam.pem 4096`
12. Configure NGINX. `vim /etc/nginx/sites-enabled/<your_domain_name>`
```
server {
	listen 80;
	listen [::]:80;

	listen 443 ssl http2;
	listen [::]:443 ssl http2;
	ssl_certificate /etc/letsencrypt/live/<your_domain_name>/fullchain.pem; # managed by Certbot
	ssl_certificate_key /etc/letsencrypt/live/<your_domain_name>/privkey.pem; # managed by Certbot
	ssl_trusted_certificate /etc/letsencrypt/live/<your_domain_name>/chain.pem;

	# Improve HTTPS performance with session resumption
	ssl_session_cache shared:SSL:10m;
	ssl_session_timeout 5m;

	# Enable server-side protection against BEAST attacks
	ssl_prefer_server_ciphers on;
	ssl_ciphers ECDH+AESGCM:ECDH+AES256:ECDH+AES128:DH+3DES:!ADH:!AECDH:!MD5;

	# Disable SSLv3
	ssl_protocols TLSv1 TLSv1.1 TLSv1.2;

	# Diffie-Hellman parameter for DHE ciphersuites
	# $ sudo openssl dhparam -out /etc/ssl/certs/dhparam.pem 4096
	ssl_dhparam /etc/ssl/certs/dhparam.pem;

	# Enable HSTS (https://developer.mozilla.org/en-US/docs/Security/HTTP_Strict_Transport_Security)
	add_header Strict-Transport-Security "max-age=63072000; includeSubdomains";

	# Enable OCSP stapling (http://blog.mozilla.org/security/2013/07/29/ocsp-stapling-in-firefox)
	ssl_stapling on;
	ssl_stapling_verify on;
	resolver 8.8.8.8 8.8.4.4 valid=300s;
	resolver_timeout 5s;

	# Add index.php to the list if you are using PHP
	index index.html index.htm index.nginx-debian.html index.php;

	server_name <your_domain_name>;

  	# Increase client body size
  	client_max_body_size 256M;

	location = /favicon.ico { access_log off; log_not_found off; }

  	# Proxy settings
  	location / {
	      proxy_pass http://localhost:<WEBSERVER_PORT>;
	      proxy_http_version 1.1;
	      proxy_set_header Upgrade $http_upgrade;
	      proxy_set_header Connection "upgrade";
	      proxy_set_header Host $host;
	      proxy_set_header X-Real-IP $remote_addr;
	      proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
	      proxy_set_header X-Forwarded-Proto $scheme;
	      proxy_buffering off;
	}

	# deny access to .htaccess files, if Apache's document root
	# concurs with nginx's one
	#
	location ~ /\.ht {
		deny all;
	}

	location ~ /\. {
		access_log off;
		log_not_found off;
		deny all;
	}

	gzip on;
	gzip_disable "msie6";

	gzip_comp_level 6;
	gzip_min_length 1100;
	gzip_buffers 4 32k;
	gzip_proxied any;
	gzip_types
		text/plain
		text/css
		text/js
		text/xml
		text/javascript
		application/javascript
		application/x-javascript
		application/json
		application/xml
		application/rss+xml
		application/octet-stream
		image/svg+xml
		image/png;

	access_log off;
	#access_log  /var/log/nginx/<your_domain_name>-access.log;
	error_log   /var/log/nginx/<your_domain_name>-error.log;
}
```
13. Restart NGINX. `systemctl restart nginx`
14. Close port 80. (for security) `ufw deny 80` (IF you are using cloudflare skip this step. Instead put force HTTPS in the cloudflare settings)
15. Allow HTTPS Traffic `ufw allow 443`
16. Go to your domain and browse!
17. Renew your SSL certificates by running certbot renew --standalone or 
```
systemctl stop nginx
certbot renew
systemctl start nginx
```

## How This Works:

Linux is fantastic for web hosting and general server stuff. It is the most used OS (Kernel) for servers.

Cloud server providers can be expensive. I recommend something cheapo and less corporate than AWS and Azure. Personally I use Vultr (as low as $3.50 a month). Make sure you are comfortable navigating a terminal, otherwise interacting with a cloud server is impossible.

DNS providers are how you are going to point everyone else on the internet towards your server. Your cloud provider will have an IP somewhere. You need a domain name. Cloudflare is the most popular DNS provider and has excellent free features. I purchase my domain name through Cloudflare because it is generally cheaper there. Then I follow their simple setup steps, they will run you through it. First time usage can be kind of confusing because there is so much you can click on.
SSH (Secure Shell). This is how you can control your webserver remotely. You need to save your password or learn how to work with SSH keys.

Docker, my preferred way of programming these days, it makes it incredibly easy to deploy software. Docker compose is a fantastic tool. Most of the configuration for your website is done via the docker-compose.yaml file. There you will find your port, make sure that port is 80 or 443, those ports are reserved for http and https respectively. Make sure your DNS provider forces https because it is an encrypted communication protocol.

Now you need to be able to know how to code a website, there are many different technologies to achieve this, all can be containerized in some fashion. You can test your website on localhost. It makes a lot of sense to be done this part of the process before you start setting up your webserver. You can slot containers in and out of your webserver. What we are setting up right now is simple, single container webserver. Scaling is a whole other rabbit hole with container orchestration technologies such as Kubernetes.

NGINX, this is how you point visitors on your network to your website. Incoming web traffic will type your website domain name in the url bar, the DNS provider then points them to your server's IP address, the IP remains hidden throughout this process. Once your IP is reached, web traffic is redirected to ports 80 (http) or 443 (https), your DNS provider will probably reroute everything through 443. Certificates are required to work with https, certbot is the service being used here. Certificates need to be renewed every couple of months. In the nginx file above there are various technologies being harnessed for the purpose of security. We disable the error log when the favicon.ico is not found. Location / is the route of the website. It needs to point towards your docker localhost:port. Gzip is a compression algorithm, listed are the types of file headers that compression will be enabled on. There may be other stuff you wish to configure. Then restart nginx and allow traffic to flow in on port 443.

BANG you have a live webserver.








