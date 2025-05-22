#!/bin/sh

# create 3000 votes (2000 for option a, 1000 for option b)

# Update the URL to point to your server
ab -n 1000 -c 50 -p posta -T "application/x-www-form-urlencoded" http://vote/
ab -n 1000 -c 50 -p postb -T "application/x-www-form-urlencoded" http://vote/
ab -n 1000 -c 50 -p posta -T "application/x-www-form-urlencoded" http://vote/
