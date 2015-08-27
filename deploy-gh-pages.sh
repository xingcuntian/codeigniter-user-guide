#!/bin/bash

cd build/html
git init
git config user.name "Travis CI"
git config user.email "hex@codeigniter.org.cn"
git add .
git commit -m "Deploy to GitHub Pages"
git push --force "https://${GH_TOKEN}@${GH_REF}" master:gh-pages
