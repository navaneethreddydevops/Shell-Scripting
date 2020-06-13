# Shell-Scripting

Repo for shell syntax and Code files for Reference

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