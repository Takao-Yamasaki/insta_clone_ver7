#!/bin/bash
set -e

rm -f /insta_clone/tmp/pids/server.pid

exec "$@"