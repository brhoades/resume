#!/usr/bin/env bash
inotifywait -q -m -e close_write --format %e resume.tex |
while read events; do
  make
done
