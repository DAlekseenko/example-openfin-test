#!/bin/bash

# Start the first process
set -m

# Start the helper process and put it in the background
chromedriver &

# Start the main process
npm run start

# Exit after working
exit 1
