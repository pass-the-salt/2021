#!/bin/bash

# Using https://hub.docker.com/r/jekyll/jekyll/
# Available JEKYLL_VERSION:
# https://hub.docker.com/r/jekyll/jekyll/tags?page=1&ordering=last_updated
# See also https://github.com/envygeeks/jekyll-docker/blob/master/README.md
# (latest / 4.2.0 seems to be still with jekyll 4.1.0 ??)

export JEKYLL_VERSION=4.1.0
docker run --rm --volume="$PWD:/srv/jekyll" -it jekyll/jekyll:$JEKYLL_VERSION jekyll build
