#!/bin/sh
while true; do
  clear;
  make && cp solid.pdf /usr/local/share/AutoOnWingInspection/scratch/solid.pdf
  git ls-files -z | xargs -0 inotifywait -e CLOSE_WRITE;
done
