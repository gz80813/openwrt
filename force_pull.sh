#! /bin/sh
git fetch --all
git reset --hard origin/dev-master
rm -rf package/feeds feeds
./scripts/feeds update -a
./scripts/feeds install -a
