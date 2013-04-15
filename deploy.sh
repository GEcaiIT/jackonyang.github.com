#!/bin/bash

rake deploy

git add source/*
git commit -a -m'update blog content'
git push origin source
