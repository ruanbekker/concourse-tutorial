#!/bin/sh
set -ex

user_email="ruan.ru.bekker@gmail.com"
user_name="Ruan Bekker"

git clone concourse-date updated-timestamp

cd updated-timestamp
echo "The date: $(date)" > 08-publishing-outputs/bumpme

git config --global user.email "${user_email}"
git config --global user.name "${user_name}"

git add .
git commit -m "bumped date"
