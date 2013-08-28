#!/bin/bash
# Clean out old logs (older than 14 days).

logs_dir=/home/minecraft/minecraft/logs
if [ -d "${logs_dir}" ]; then
  find "${logs_dir}" -mtime +14 -name '*.log.gz' -exec 'rm' '{}' ';'
fi

