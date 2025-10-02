#!/bin/bash

# Exit immediately if a command fails
set -e

mdbook build
ghp-import -n -p -f book