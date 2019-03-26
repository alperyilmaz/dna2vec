# dna2vec

**Dna2vec** is an open-source library to train distributed representations of variable-length k-mers.

For more information, please refer to the paper: [dna2vec: Consistent vector representations of variable-length k-mers](https://arxiv.org/abs/1701.06279)

This repo is fork of the original [pnpnpn/dna2vec](https://github.com/pnpnpn/dna2vec) repo. The upgrades are:

* runs within Docker container
* uses latest versions of packages

No Installation Required
---

There's no need to install packages or no need to clone the repository. To run the script just type the following command in terminal
```bash
docker run --rm -v $(pwd):/app/data --user 1000 alperyilmaz/dna2vec train_dna2vec.py -c sammple_config.yml
```
The container mounts the working directory, thus files are read in or write out to folders within working directory. Just put your fasta files into a folder and edit config file and then start training.

The  sample config file can be as simple as:

```
inputs: inputs/chr*.fa
k-low: 3
k-high: 5
out-dir: results/
```

Please refer to `hg38-20161219-0153.yml` for full blown example.

For details about usage, please refer to  [pnpnpn/dna2vec](https://github.com/pnpnpn/dna2vec) repo.


License
---
This software is licensed under the [MIT license](http://en.wikipedia.org/wiki/MIT_License)
