Eng-DCEC
========




Setting up the web interface
========

1. Download or clone the repository
2. Spin up the GF server:

```bash
cd Eng-DCEC/gf
gf -make EngExt.gf
gf -server --document-root=.
```

3. Spin up the Lisp server (for the interactive parser's web interface and for transform from simple abstract GF into concrete DCEC*)

```lisp
(load "/Users/naveen/work/Eng-DCEC/loader.lisp")
(ENG-DCEC:start-www)
```
