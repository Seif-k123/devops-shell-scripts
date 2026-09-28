#!/bin/bash

# Simple Password Generator

echo "=============================="
echo "     Password Generator"
echo "=============================="

read -rp "Enter password length: " PASS_LENGTH

if ! [[ "$PASS_LENGTH" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid number."
    exit 1
fi

if [ "$PASS_LENGTH" -lt 4 ]; then
    echo "Error: Password length must be at least 4."
    exit 1
fi

echo
echo "Generated passwords:"
echo "--------------------"

for p in {1..5}; do
    openssl rand -base64 48 | cut -c1-"$PASS_LENGTH"
done


