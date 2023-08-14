# Billy Rhoades' Resume

This repository contains the source code for my personal resume in LaTeX. You can grab a
potentially recent render from here:

https://resume.brod.es

# Building
## Manually
Install the fontawesome5 and silence package. Afterwards, build with XeLaTeX or LuaLaTeX.

## Nix
Using nix and direnv, you can build this resume by cloning this repository and
running:

```
$ direnv allow
$ make
```

The built resume will be available in build/resume.pdf.
