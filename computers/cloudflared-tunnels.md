Here's a complete summary of setting up multiple Cloudflare Tunnels on the same server:

1. Initial Setup of Second Tunnel
```bash
cloudflared tunnel create newwebsite  # Created new tunnel
```

2. Configuration Files
- Created separate config for new tunnel: `/etc/cloudflared/configname.yml`
```yaml
tunnel: <tunnel-id>
credentials-file: /etc/cloudflared/<tunnel-id>.json
ingress:
  - hostname: newwebsite.com
    service: http://localhost:port
    originRequest:
      noTLSVerify: true
  - service: http_status:404
```

3. Systemd Service Setup
- Created new service file: `/etc/systemd/system/cloudflared-servicename.service`
```ini
[Unit]
Description=cloudflared tunnel - website name
After=network-online.target
Wants=network-online.target

[Service]
TimeoutStartSec=0
Type=notify
ExecStart=/usr/bin/cloudflared --no-autoupdate --config /etc/cloudflared/configname.yml tunnel run
Restart=on-failure
RestartSec=5s

[Install]
WantedBy=multi-user.target
```

4. Credential Management
- Initially credentials were in `~/.cloudflared/`
- Best practice: Move tunnel credentials to `/etc/cloudflared/`
```bash
sudo cp ~/.cloudflared/<tunnel-id>.json /etc/cloudflared/
sudo chown root:root /etc/cloudflared/<tunnel-id>.json
sudo chmod 644 /etc/cloudflared/<tunnel-id>.json
```

5. DNS Configuration
- Added CNAME record in Cloudflare dashboard:
  - Name: @ (or domain)
  - Target: <tunnel-id>.cfargotunnel.com
  - Proxied: Yes

6. Service Management
```bash
sudo systemctl daemon-reload
sudo systemctl enable cloudflared-servicename
sudo systemctl start cloudflared-servicename
```

7. SSL/TLS Settings
- Set to "Flexible" in Cloudflare dashboard
- Verified Cloudflare nameservers were properly set

8. Troubleshooting Steps We Used:
```bash
# Check tunnel status
cloudflared tunnel list

# Check service status
sudo systemctl status cloudflared-servicename

# View logs
sudo journalctl -u cloudflared-servicename -f

# Verify local service
netstat -tulpn | grep 3333

# Check DNS
dig NS newwebsite.com
```

Key Learnings:
- Keep separate config files for each tunnel
- Use different service names for each tunnel
- Ensure proper DNS records in Cloudflare
- Store credentials in /etc/cloudflared/ for production use
- Both tunnels can run simultaneously under the same Cloudflare account
