#!/bin/bash

# Start AEM
sh ./crx-quickstart/bin/start

# Keep Process Running
tail -F ./crx-quickstart/logs/error.log
