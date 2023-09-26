# HSI (Hex-encoded Sequence Indexer)



## About

This is my personal branch of the super-lightweight sequence indexing program
that I developed for use in Mirage2 and Diviner.

The main reason for moving this from the [Wheeler Lab repo](https://github.com/traviswheelerlab/hsi)
is just to have a version that uses make rather than cmake.



## Setup

Just `make` it!  The executables will live in the `build` directory.



## Usage

There are three tools included in this package: `sindex`, `sstat`, and `sfetch`.


### sindex

`sindex` is used to create a `.hsi` index on a FASTA-formatted sequence file.
Running

```
sindex [filename].fa
```

will create an index file named `[filename].fa.hsi`


### sstat

`sstat` prints out summary metadata regarding the sequences contained in
an hsi-indexed FASTA file:

```
sstat [filename].fa
```


### sfetch

`sfetch` is used to extract a sequence (or part of a sequence) from
an hsi-indexed FASTA file.  To extract the full contents of a sequence,
use the command

```
sfetch [filename].fa [sequence-name]
```

To extract a subsequence beginning at the i<sup>th</sup> residue and ending
at the j<sup>th</sup> residue (inclusive), use the command

```
sfetch -range i..j [filename].fa [sequence-name]
```

