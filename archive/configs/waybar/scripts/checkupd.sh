#! /bin/bash

COUNT=$(checkupdates | wc -l)

if [ $COUNT -gt 69 ]; then
    # Issue state critical
    CLASS="critical"
elif [ $COUNT -gt 49 ]; then
    # Issue state warning
    CLASS="warning"
elif [ $COUNT -gt 0 ]; then
    # Issue state baseline
    CLASS="baseline"
else
    CLASS="updated"
fi

echo "{\"text\": \"$COUNT\", \"class\": \"$CLASS\"}"
