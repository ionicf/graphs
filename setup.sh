#!/usr/bin/env bash

# Fetch some graphs
mkdir -p ~/data && cp -r data/* ~/data/
bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/SNAP/web-Stanford.tar.gz
bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/SNAP/web-BerkStan.tar.gz
bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/SNAP/web-Google.tar.gz
bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/SNAP/web-NotreDame.tar.gz
bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/LAW/indochina-2004.tar.gz
bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/SNAP/soc-Slashdot0811.tar.gz
bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/SNAP/soc-Slashdot0902.tar.gz
bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/SNAP/soc-Epinions1.tar.gz
bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/SNAP/soc-LiveJournal1.tar.gz
bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/DIMACS10/coAuthorsDBLP.tar.gz
bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/DIMACS10/coAuthorsCiteseer.tar.gz
bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/DIMACS10/coPapersCiteseer.tar.gz
bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/DIMACS10/coPapersDBLP.tar.gz
bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/DIMACS10/italy_osm.tar.gz
bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/DIMACS10/great-britain_osm.tar.gz
bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/DIMACS10/germany_osm.tar.gz
bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/DIMACS10/asia_osm.tar.gz
ls --color ~/data
