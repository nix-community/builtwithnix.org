#!/bin/sh -eu
new_source=$(readlink -f "${1:-result}")
owner=nix-community
repo=builtwithnix.org
branch=gh-pages

git_repo=/tmp/repo.git

git clone --bare --branch "$branch" --depth 1 -- "git@github.com:$owner/$repo.git" "$git_repo"

g() {
  git --work-tree="$new_source" --git-dir="$git_repo" "$@"
}

cd "$new_source"
g add .
if ! g commit -m "Auto-generated [ci skip]"; then
  exit
fi
g push -f origin "$branch"
