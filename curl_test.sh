#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <username> <data>"
    exit 1
fi

USERNAME=$1
DATA=$2
PORT=3000
BEGIN="http://localhost:${PORT}"

curl -c cookies.txt "${BEGIN}/login?user=${USERNAME}"
curl -b cookies.txt "${BEGIN}/business/?data=${DATA}"
curl -b cookies.txt "${BEGIN}/business/logout"
