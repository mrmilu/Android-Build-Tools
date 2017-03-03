#!/bin/bash

source app/version.properties

VERSION="${MAJOR}.${MINOR}.${PATCH}.${AI_VERSION_CODE}";

echo $VERSION;
git commit -am "Increase to ${VERSION}.${BUILD}";
git flow release finish  -m 'Version-${VERSION}'  "${VERSION}";

