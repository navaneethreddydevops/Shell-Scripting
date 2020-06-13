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
