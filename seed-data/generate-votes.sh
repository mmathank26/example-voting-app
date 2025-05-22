#!/bin/sh

# create 3000 votes (2000 for option a, 1000 for option b)
# Update the URL to point to your server in VOTE_URL
VOTE_URL="http://vote/"

ab -n 1000 -c 50 -p posta -T "application/x-www-form-urlencoded" "$VOTE_URL"
ab -n 1000 -c 50 -p postb -T "application/x-www-form-urlencoded" "$VOTE_URL"
ab -n 1000 -c 50 -p posta -T "application/x-www-form-urlencoded" "$VOTE_URL"
