#!/bin/bash
echo "token"
read token
echo "ip"
read id
ip=$(curl ipinfo.io/ip)
curl -X POST https://api.telegram.org/bot$token/sendMessage -d text="الايبي الخاص بك هو:  $ip" -d chat_id=$id
