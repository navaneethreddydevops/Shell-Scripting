# Service Unit in Linux
systemd service units are installed:
```
/usr/lib/systemd/system
/etc/systemd/system
```

```
create servicescript.sh
sudo cp test_service.sh /usr/bin/servicescript.sh
sudo chmod +x /usr/bin/servicescript.sh
```

# Create a UNITFILE 

```
/lib/systemd/system/${SERVICE-NAME}.service
```

# myservice unit file
```
cat << EOF > /lib/systemd/system/myservice.service
[Unit]
Description=Fist Unit service

[Service]
Type=simple
ExecStart=/bin/bash /usr/bin/servicescript.sh

[Install]
WantedBy=multi-user.target
EOF
```

```
cp /lib/systemd/system/myservice.service /etc/systemd/system
sudo cp myservice.service /etc/systemd/system/myservice.service
sudo chmod 644 /etc/systemd/system/myservice.service
```
# Start the new service
```

sudo systemctl start myservice
sudo systemctl status myservice

```