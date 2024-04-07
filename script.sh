#!/bin/bash
git reset --hard HEAD
git clean -xffd
git pull origin master --no-edit

pm2 start yarn -- start
