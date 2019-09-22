#!/bin/bash
echo "Updating the Kernel and all packages"
sudo yum -y update 
echo "Installing the CloudWatch Agent"
curl https://s3.amazonaws.com/aws-cloudwatch/downloads/latest/awslogs-agent-setup.py -O
if []

sudo python ./awslogs-agent-setup.py --region us-east-1
else
sudo python3 ./awslogs-agent-setup.py --region us-east-1
curl https://s3.amazonaws.com/aws-cloudwatch/downloads/latest/awslogs-agent-setup.py -O
curl https://s3.amazonaws.com/aws-cloudwatch/downloads/latest/AgentDependencies.tar.gz -O
tar xvf AgentDependencies.tar.gz -C /tmp/
sudo python ./awslogs-agent-setup.py --region us-east-1 --dependency-path /tmp/AgentDependencies
sudo service awslogs status
sudo service awslogs status


###Installing for Amazon OS
wget https://s3.amazonaws.com/amazoncloudwatch-agent/linux/amd64/latest/AmazonCloudWatchAgent.zip
unzip AmazonCloudWatchAgent.zip
sudo ./install.sh
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-config-wizard
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a put-config -m ec2 -c file:/opt/aws/amazon-cloudwatch-agent/bin/config.json -s

#Fetching the ssm parameter file 
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c ssm: AmazonCloudWatch-linux -s