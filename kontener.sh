#!/bin/bash

lxc init ubuntu:16.04 armand
lxc start armand
sleep 30
lxc exec armand -- apt update -y
lxc exec armand -- apt upgrade -y
lxc exec armand -- apt install mc -y
