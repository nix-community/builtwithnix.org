#!/bin/sh -exu
new_source=$(readlink -f "$1")
repo_url=$2
branch=${3:-gh-pages}
repo_path=/tmp/repo.git

git clone --bare --branch "$branch" --depth 1 -- "$repo_url" "$repo_path"

g() {
  git --work-tree="$new_source" --git-dir="$repo_path" "$@"
}

cd "$new_source"
g add .
if ! g commit -m "Auto-generated [ci skip]"; then
  exit
fi
g push -f origin "$branch"
