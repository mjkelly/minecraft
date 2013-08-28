#!/bin/bash
# Mails a list when people join or leave the minecraft server. This relies on a
# working mailx on the machine.
#
# This is a total hack that nobody should ever use.
#
# Wed Jul 24 14:45:55 EDT 2013


# The matching regex must be sure to catch only lines that don't contain
# quotes, etc, that could be used to escape the mailx command line later!
tail -n 0 -f server.log \
  | perl -ne '/^([\d-]+ [\d:]+) \[INFO\] ([\w-]+) (joined|left)/ or next; ($time, $user, $action) = ($1, $2, $3); $subj = "$user $action"; print "$time - $subj\n"; system("mailx -s \"$subj\" ididntchangethedefault\@example.com < /dev/null");'
# SETUP: Change email address on the line above. *YOU MUST ESCAPE THE '@' IN THE ADDRESS* (E.g., foo\@bar.com).
