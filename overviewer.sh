#!/bin/bash
# Runs minecraft overviewer (overviewer.org).

world=$1

world_dir=/home/minecraft/minecraft
overviewer_dir=/home/minecraft/overviewer

if [[ -z "$world" ]]; then
  echo "Usage: $0 <WORLDNAME>" >&2
  exit 2
fi

input=${world_dir}/${world}
output=${overviewer_dir}/${world}

#echo "input=${input}"
#echo "output=${output}"

# This takes a while and is CPU-intensive. Don't let it starve the actual minecraft server. :)
nice overviewer.py --quiet --rendermodes=lighting,cave ${input} ${output}

exit 0
