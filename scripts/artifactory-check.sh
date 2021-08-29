#!/usr/bin/env bash

# Description:
#
#   Checks lockfile for changes that point to private registries
#

# error out if something fails
set -e

if grep -R --exclude='*.sh' --exclude-dir='node_modules'  --include='yarn.lock' -e 'artifactory.availity' -e 'packages.availity'  ./
then
  printf "\n"
  printf "   (c).-.(c)    (c).-.(c)    (c).-.(c)    (c).-.(c)    (c).-.(c) \n"
  printf "    / ._. \      / ._. \      / ._. \      / ._. \      / ._. \ \n"
  printf "  __\( Y )/__  __\( Y )/__  __\( Y )/__  __\( Y )/__  __\( Y )/__\n"
  printf " (_.-/'-'\-._)(_.-/'-'\-._)(_.-/'-'\-._)(_.-/'-'\-._)(_.-/'-'\-._)\n"
  printf "    || E ||      || R ||      || R ||      || O ||      || R ||\n"
  printf "  _.' \`-' '._  _.' \`-' '._  _.' \`-' '._  _.' \`-' '._  _.' \`-' '._\n"
  printf " (.-./\`-'\.-.)(.-./\`-\`\.-.)(.-./\`-\`\.-.)(.-./\`-'\.-.)(.-./\`-\`\.-.)\n"
  printf "  \`-'     \`-'  \`-'     \`-'  \`-'     \`-'  \`-'     \`-'  \`-'     \`-' \n"
  printf "\n\n"
  printf "\nOne of your packages contains a dependency from a private Availity registry.\n"
  printf "Please correct this by reverting your changes to yarn.lock and then running 'yarn' off of the Availity proxy.\n\n"
  exit 1
else
  echo "Artifactory Check Passed"
fi