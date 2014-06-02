Prerequisites
=============

* SBCL or Lispworks
* Quicklisp
* GF

-------------------------------------------------------------------------------

Eng-DCEC
========

```DCEC.gf``` is the core abstract syntax. ```DCECExt.gf``` is an
extension of the core abstract syntax with some verbs and
agents. ```Eng.gf``` is the core concrete syntax, and ```EngExt.gf```
is the concrete syntax extended.

-------------------------------------------------------------------------------

Setting up the web interface
========



1. Download or clone the repository

2. Spin up the GF server:
```bash
cd Eng-DCEC/gf
gf -make EngExt.gf
gf -server --document-root=.
```

3. Spin up the Lisp server (for the interactive parser's web interface
   and for transform from simple abstract GF into concrete DCEC*).

```lisp
(load "path-to/loader.lisp")
(ENG-DCEC:start-www)
```

(For your interface to be accessed remotely, edit
```*gf-server-url*``` in ```configs.lisp``` to point to where the GF server is running. )
