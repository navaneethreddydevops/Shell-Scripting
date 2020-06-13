
# SSH Configurations

```
touch ~/.ssh/config
chmod 644 ~/.ssh/config

cat << EOF >> /.ssh/config
Host bastion
  HostName bastion.com
  Port 22
  User navaneeth
  IdentityFile ~/.ssh/foobar.key   ### Private Key file to match finger print
  Host *
     ForwardAgent no
     ForwardX11 no
     ForwardX11Trusted yes
     User navaneeth
     Port 22
     Protocol 2
EOF
```

```
ssh -v bastion
```

# Shortcuts in shell

```
alias newcommand='yourcommand -arguments'
```

```
touch ~/.bashrc
alias c='clear'
alias cp="cp -i"
alias ls="ls -al"
alias di="docker images"
alias dc="docker ps"
alias gp="git push origin master"
alias gf="git fetch; git pull"
```

# Unalias (Removing the Alias)
```
unalias c
unalias dc
```

# Variables in Shell

```
export AWS_REGION="us-east-1a"
export AWS_PROFILE='DEVELOPER'
echo $AWS_REGION
echo $AWS_PROFILE
```
String Variables can be assigned to a varibale in "" or ''


# Default System Level Variables:
```
$SHELL
$USER
$PATH
$HOME
$EDITOR
$LOGNAME
$LANG
$TERM
$MAIL
$BASH_VERSION
```

# Environment Varibales:
```
printenv
env
set AWS_REGION="us-east-1" 
unset AWS_REGION="us-east-1"
export AWS_REGION="us-east-1"
```

# Finding Files in Linux:

```
find -name README.md

find ./ShellScriptingBasics -name Basics.md -delete

find ./ShellScriptingBasics -name Basics.md -exec rm -i {} \;    ### Prompts user for deleting file

```
# CUT Command in Linux

``` 
names.csv
John,Smith,34,London
Arthur,Evans,21,Newport
George,Jones,32,Truro
```

```
cut -d ',' -f 1 names.csv
John
Arthur  
George
```

```
cut -d ',' -f 1,4 names.csv
John,London
Arthur,Newport
George,Truro
```

# Loop Syntax

IF-ELSE

CASE

FOR-LOOP

# Defining Functions:

```
function describeinstances(){
    aws ec2 describe instances --region us-east-1 --profile DEVELOPER
}

function listbuckets(){
    aws s3 ls --profile DEVELOPER
}

describeinstances()
listbuckets()

```