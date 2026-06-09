#!/bin/bash
# Find files with Windows-unsafe names

echo "=== Files with colons ==="
find . -path ./.git -prune -o -name "*:*" -print | grep -v "^./.git"

echo ""
echo "=== Files with other reserved chars (< > \" | ? *) ==="
find . -path ./.git -prune -o -name '*[<>"|?*]*' -print | grep -v "^./.git"

echo ""
echo "=== Files ending in dot or space ==="
find . -path ./.git -prune -o \( -name "*." -o -name "* " \) -print | grep -v "^./.git"

echo ""
echo "=== Reserved Windows names ==="
find . -path ./.git -prune -o -iregex '.*/\(con\|prn\|aux\|nul\|com[1-9]\|lpt[1-9]\)\(\..*\)?$' -print | grep -v "^./.git"