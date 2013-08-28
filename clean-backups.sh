#!/bin/bash
# Clean out old backups (older than 7 days).
#
# The assumption is that long-term backups (if any) are kept offsite.

backup_dir=/home/minecraft/minecraft/backups
if [ -d "${backup_dir}" ]; then
  find "${backup_dir}" -mtime +7 -name '*.tar.gz' -exec 'rm' '{}' ';'
fi

