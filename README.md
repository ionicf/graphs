A few sample graphs in Matrix Market (.mtx) format.

`data/` contains manual graphs i use for testing PageRank algorithm.
`fetch.sh` can be used to download compressed graphs from a URL. You can use
["graphs"] dataset in Kaggle with a notebook, like ["cppf/nvgraph.sh"]. Else
use [Google Colab] or [Kaggle] notebook along with the script (as below) to
download any graph. For graph drawings, see this [Photos Album].

<br>

```bash
# Download graphs to ~/Data/LAW, ~/Data/SNAP, ...
$ bash main.sh
```

<br>
<br>


## References

- [SNAP: Stanford Large Network Dataset Collection](http://snap.stanford.edu/data/index.html)
- [The SuiteSparse Matrix Collection](https://suitesparse-collection-website.herokuapp.com)

<br>
<br>

[![](https://img.youtube.com/vi/9NOzUcbTBAE/maxresdefault.jpg)](https://www.youtube.com/watch?v=9NOzUcbTBAE&list=PLNEveYilIj1Bp5UolizUxNTDCLK6Ll1zK&index=1)

["graphs"]: https://www.kaggle.com/wolfram77/graphs
["cppf/nvgraph.sh"]: https://www.kaggle.com/wolfram77/cppf-nvgraph-sh
[Google Colab]: https://colab.research.google.com/drive/1mHCp1Cfono552nnWA-wpPvMdRUyKbK1_?usp=sharing
[Kaggle]: https://www.kaggle.com/wolfram77/wolfram77-graphs
[Photos Album]: https://photos.app.goo.gl/H9Sdqm9A9DtoGhTv7
