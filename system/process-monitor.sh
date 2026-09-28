#!/bin/bash

echo "===== Top CPU Processes ====="

ps aux | sort -k3 -nr | head -6
