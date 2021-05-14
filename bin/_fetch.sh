#!/usr/bin/env bash

rename() {
  if   [[ "$2" == "$1" ]]; then
    :
  elif [[ "$2" == *"/" ]]; then
    cp -rf "$1"/* "$2"
    rm -rf "$1"
  else
    mv "$1" "$2"
  fi
}

extract() {
  if   [[ "$1" == *".zip" ]];    then unzip "$1"    && rm -f "$1"
  elif [[ "$1" == *".tar.gz" ]]; then tar -xzf "$1" && rm -f "$1"
  elif [[ "$1" == *".gz" ]];     then gunzip "$1"
  fi
}


fetch() {
  url="$1"
  dow="${url##*/}"
  nam="${dow%%.*}"
  dst="${2:-nam}"
  num="$(ls -1 "$dst".* 2>/dev/null | wc -l)"
  if [ ! -e "$dst" ] || [[ "$num" == "0" ]]; then
    echo "Fetching $url ..."
    wget "$url"
    extract "$dow"
    rename "$nam" "$dst"
  fi
}

if [[ "$1" != "" ]]; then fetch "$@"; fi
