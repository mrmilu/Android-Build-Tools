#!/bin/bash

source app/version.properties
AI_VERSION="$(($AI_VERSION_CODE + 1))"
VERSION="${MAJOR}.${MINOR}.${PATCH}.${AI_VERSION}";

echo $VERSION;
git stash;
git flow release start ${VERSION};