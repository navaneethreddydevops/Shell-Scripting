#!/bin/bash
var1=10
var2=20
var3=$(expr $var1 + $var2)
echo "The value of the variable is $var3"