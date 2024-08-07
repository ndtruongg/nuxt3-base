#!/usr/bin/env bash
local_branch_name="$(git rev-parse --abbrev-ref HEAD)"

valid_branch_regex='^((fix|feat|release|refactor|chore)\/[a-zA-Z0-9\-]+)$'

message="Branch name invalidate, regex: $valid_branch_regex"

if [[ ! $local_branch_name =~ $valid_branch_regex ]]; then
    echo "$message"
    exit 1
fi

exit 0
