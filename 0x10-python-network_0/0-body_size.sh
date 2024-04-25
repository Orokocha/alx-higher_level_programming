#!/bin/bash

# Check if a URL is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Get URL from command line argument
URL=$1

# Send request to the URL and save the response body to a temporary file
RESPONSE=$(curl -s -o /tmp/response_body "$URL")

# Get the size of the response body in bytes
SIZE=$(wc -c < /tmp/response_body)

# Display the size of the response body
echo "Size of the response body: $SIZE bytes"

# Clean up temporary file
rm -f /tmp/response_body

