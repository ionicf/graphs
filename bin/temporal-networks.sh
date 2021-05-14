#!/usr/bin/env bash
dir="$(dirname "$(readlink -f "$0")")"
source "$dir/_fetch.sh"

# Switch directory
if [[ "$1" != "" ]]; then pushd "$1" > /dev/null; fi


# Social Network: Reddit Hyperlink Network
fetch http://snap.stanford.edu/data/soc-redditHyperlinks-body.tsv
fetch http://snap.stanford.edu/data/soc-redditHyperlinks-title.tsv

# Stack Overflow temporal network
fetch http://snap.stanford.edu/data/sx-stackoverflow.txt.gz
fetch http://snap.stanford.edu/data/sx-stackoverflow-a2q.txt.gz
fetch http://snap.stanford.edu/data/sx-stackoverflow-c2q.txt.gz
fetch http://snap.stanford.edu/data/sx-stackoverflow-c2a.txt.gz

# Math Overflow temporal network
fetch http://snap.stanford.edu/data/sx-mathoverflow.txt.gz
fetch http://snap.stanford.edu/data/sx-mathoverflow-a2q.txt.gz
fetch http://snap.stanford.edu/data/sx-mathoverflow-c2q.txt.gz
fetch http://snap.stanford.edu/data/sx-mathoverflow-c2a.txt.gz

# Super User temporal network
fetch http://snap.stanford.edu/data/sx-superuser.txt.gz
fetch http://snap.stanford.edu/data/sx-superuser-a2q.txt.gz
fetch http://snap.stanford.edu/data/sx-superuser-c2q.txt.gz
fetch http://snap.stanford.edu/data/sx-superuser-c2a.txt.gz

# Ask Ubuntu temporal network
fetch http://snap.stanford.edu/data/sx-askubuntu.txt.gz
fetch http://snap.stanford.edu/data/sx-askubuntu-a2q.txt.gz
fetch http://snap.stanford.edu/data/sx-askubuntu-c2q.txt.gz
fetch http://snap.stanford.edu/data/sx-askubuntu-c2a.txt.gz

# wiki-talk temporal network
fetch http://snap.stanford.edu/data/wiki-talk-temporal.txt.gz
fetch http://snap.stanford.edu/data/wiki-talk-temporal-usernames.txt.gz

# email-Eu-core temporal network
fetch http://snap.stanford.edu/data/email-Eu-core-temporal.txt.gz
fetch http://snap.stanford.edu/data/email-Eu-core-temporal-Dept1.txt.gz
fetch http://snap.stanford.edu/data/email-Eu-core-temporal-Dept2.txt.gz
fetch http://snap.stanford.edu/data/email-Eu-core-temporal-Dept3.txt.gz
fetch http://snap.stanford.edu/data/email-Eu-core-temporal-Dept4.txt.gz

# CollegeMsg temporal network
fetch http://snap.stanford.edu/data/CollegeMsg.txt.gz

# Bitcoin OTC trust weighted signed network
fetch https://snap.stanford.edu/data/soc-sign-bitcoinotc.csv.gz

# Bitcoin Alpha trust weighted signed network
fetch https://snap.stanford.edu/data/soc-sign-bitcoinalpha.csv.gz

# Social Network: MOOC User Action Dataset
fetch http://snap.stanford.edu/data/act-mooc.tar.gz act-mooc/

# Dynamic Face-to-Face Interaction Networks
fetch http://snap.stanford.edu/data/comm-f2f-Resistance-network.tar.gz


# Switch directory
if [[ "$1" != "" ]]; then popd > /dev/null; fi
