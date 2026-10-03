#!/bin/bash

# 1. Count the total number of commits in the repository so far
COMMIT_COUNT=$(git rev-list --count HEAD)

# 2. Add 1 to account for the commit we are about to make right now
NEXT_COUNT=$((COMMIT_COUNT + 1))

# 3. Format the version string (e.g., 1.5)
NEW_VERSION="1.${NEXT_COUNT}"

echo "Total previous commits: $COMMIT_COUNT"
echo "Calculated new version: $NEW_VERSION"

# 4. Instruct Maven to update the version in pom.xml
mvn versions:set -DnewVersion=$NEW_VERSION -DgenerateBackupPoms=false

echo "Successfully updated pom.xml to version $NEW_VERSION!"