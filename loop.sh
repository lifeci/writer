#!/bin/bash
volume="${VOLUME_PATH:-/tmp}"
interval="${TIME_INTERVAL:-1}"

echo "Write data every ${interval}s into ${volume}"

h=$(hostname -s)
while sleep $interval; do
    d=$(date '+%Y-%m-%d')
    t=$(date '+%H-%M-%S')
    echo "$h :: $d :: $t" | tee -a ${volume}/${d}.txt
done

exit 1
