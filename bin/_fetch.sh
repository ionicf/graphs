#!/usr/bin/env bash

rename() {
  if   [[ "$2" == "$1" ]]; then
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
    wget -q "$url"
    extract "$dow"
    rename "$nam" "$dst"
  fi
}

fetchPlain() {
  url="$1"
  nam="${url##*/}"
  dst="${2:-nam}"
  if [ ! -e "$dst" ]; then
    echo "Fetching $url ..."
    wget -q "$url"
    rename "$nam" "$dst"
  fi
}


fetchGz() {
  url="$1"
  dow="${url##*/}"
  nam="${dow%%.gz}"
  dst="${2:-nam}"
  if [ ! -e "$dst" ]; then
    echo "Fetching $url ..."
    wget -q "$url"
    gunzip "$dow"
    rename "$nam" "$dst"
  fi
}


fetchTarGz() {
  url="$1"
  dow="${url##*/}"
  nam="${dow%%.tar.gz}"
  dst="${2:-nam}"
  num="$(ls -1 "$dst".* 2>/dev/null | wc -l)"
  if [ ! -e "$dst" ] || [[ "$num" == "0" ]]; then
    echo "Fetching $url ..."
    wget -q "$url"
    tar -xzf "$dow"
    rm -f "$dow"
    rename "$nam" "$dst"
  fi
}


fetchZip() {
  url="$1"
  dow="${url##*/}"
  nam="${dow%%.zip}"
  dst="${2:-nam}"
  num="$(ls -1 "$dst".* 2>/dev/null | wc -l)"
  if [ ! -e "$dst" ] || [[ "$num" == "0" ]]; then
    echo "Fetching $url ..."
    wget -q "$url"
    tar -xzf "$dow"
    rm -f "$dow"
    rename "$nam" "$dst"
  fi
}
