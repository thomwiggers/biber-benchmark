# Speed of biber on large .bib repositories

This project collects some unscientific measurements of the performance of biber
and bibtex on different platforms.

## Usage

```sh
git clone https://github.com/thomwiggers/biber-benchmark.git
./benchmark.sh
```

## Example output

```plain
 ~  git  biber-benchmark  ./benchmark.sh                                                                                                         
/tmp/tmp.YJjf3lghB8 ~/git/biber-benchmark
Cloning into 'cryptobib'...
remote: Enumerating objects: 8, done.
remote: Counting objects: 100% (8/8), done.
remote: Compressing objects: 100% (8/8), done.
remote: Total 8 (delta 3), reused 1 (delta 0), pack-reused 0
Receiving objects: 100% (8/8), 4.74 MiB | 2.62 MiB/s, done.
Resolving deltas: 100% (3/3), done.
This is pdfTeX, Version 3.141592653-2.6-1.40.24 (TeX Live 2022/Arch Linux) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
This is pdfTeX, Version 3.141592653-2.6-1.40.24 (TeX Live 2022/Arch Linux) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
Biblatex version: 3.17
~/git/biber-benchmark
biber version: 2.17
biber execution time was 98 seconds
BibTeX 0.99d (TeX Live 2022/Arch Linux)
bibtex execution time was 1 seconds
Model name:                      Intel(R) Core(TM) i7-8550U CPU @ 1.80GHz
```

## Results

| Platform              | Back-end       | Processing time      |
|:----------------------|:---------------|:---------------------|
| XPS 13 9370 i7-8550U  | Biber 2.17     | 85 seconds           |
| XPS 13 9370 i7-8550U  | Bibtex 0.99d   | 2 seconds            |
| Apple M2 Pro          | Biber 2.18     | 7 seconds            |
| Apple M2 Pro          | Bibtex 0.99d   | 2 seconds            |
