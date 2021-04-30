A few sample graphs in Matrix Market (.mtx) format.

`data/` contains manual graphs i use for testing PageRank algorithm.
`fetch.sh` can be used to download compressed graphs from a URL. You can use
["graphs"] dataset in Kaggle with a notebook, like ["cppf/nvgraph.sh"]. Else
use [Google Colab] or [Kaggle] notebook along with the script (as below) to
download any graph. For graph drawings, see this [Photos Album].

<br>

```bash
!# Download graphs
!rm -rf graphs
!git clone https://github.com/wolfram77/graphs
!mkdir -p ~/data && cd graphs && cp -r data/* ~/data/
!cd graphs && bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/SNAP/web-Stanford.tar.gz
!cd graphs && bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/SNAP/web-BerkStan.tar.gz
!cd graphs && bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/SNAP/web-Google.tar.gz
!cd graphs && bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/SNAP/web-NotreDame.tar.gz
!cd graphs && bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/LAW/indochina-2004.tar.gz
!cd graphs && bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/SNAP/soc-Slashdot0811.tar.gz
!cd graphs && bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/SNAP/soc-Slashdot0902.tar.gz
!cd graphs && bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/SNAP/soc-Epinions1.tar.gz
!cd graphs && bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/SNAP/soc-LiveJournal1.tar.gz
!cd graphs && bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/DIMACS10/coAuthorsDBLP.tar.gz
!cd graphs && bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/DIMACS10/coAuthorsCiteseer.tar.gz
!cd graphs && bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/DIMACS10/coPapersCiteseer.tar.gz
!cd graphs && bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/DIMACS10/coPapersDBLP.tar.gz
!cd graphs && bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/DIMACS10/italy_osm.tar.gz
!cd graphs && bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/DIMACS10/great-britain_osm.tar.gz
!cd graphs && bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/DIMACS10/germany_osm.tar.gz
!cd graphs && bash fetch.sh ~/data https://suitesparse-collection-website.herokuapp.com/MM/DIMACS10/asia_osm.tar.gz
!ls --color ~/data
```

<br>
<br>


## References

- [The SuiteSparse Matrix Collection](https://suitesparse-collection-website.herokuapp.com)

<br>
<br>

[![](https://img.youtube.com/vi/9NOzUcbTBAE/maxresdefault.jpg)](https://www.youtube.com/watch?v=9NOzUcbTBAE&list=PLNEveYilIj1Bp5UolizUxNTDCLK6Ll1zK&index=1)

["graphs"]: https://www.kaggle.com/wolfram77/graphs
["cppf/nvgraph.sh"]: https://www.kaggle.com/wolfram77/cppf-nvgraph-sh
[Google Colab]: https://colab.research.google.com/drive/1mHCp1Cfono552nnWA-wpPvMdRUyKbK1_?usp=sharing
[Kaggle]: https://www.kaggle.com/wolfram77/wolfram77-graphs
[Photos Album]: https://photos.app.goo.gl/H9Sdqm9A9DtoGhTv7
