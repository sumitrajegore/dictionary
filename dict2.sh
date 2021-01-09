#!/bin/bash -x
declare -A dice
rollingadice{
      value=$((RANDOM%6+1))
}
for(( i=0;i<=dice;i++ ))
{
       rollingadice();
}

