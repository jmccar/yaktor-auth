#!/bin/sh
# should use the latest available image to validate, but not LATEST
if [ -f .env ]; then
RUN_ENV_FILE='--env-file .env'
fi
docker run $RUN_ENV_FILE -i --rm --user node -v "$PWD":/app -w /app yaktor/node:0.39.0 $@
