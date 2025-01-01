#!/bin/bash

LOG_FILE="build.log"

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a "$LOG_FILE"
}

run_build() {
    local dir=$1
    log "Starting build for $dir"
    cd "$dir" || exit 1
    ./build.sh
    cd .. || exit 1
    log "Finished build for $dir"
}

# Initial log entry
log "Build process started"

run_build "debian"
run_build "alpine"

log "Build process completed"
echo "Done"

