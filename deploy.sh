#!/bin/bash

rake deploy

git add *
git commit -a -m'update'
git push origin source
