#!/bin/sh

./blog.sh
git add --all
git commit -m "update"
git push
git push origin `git subtree split --prefix build master`:gh-pages --force
