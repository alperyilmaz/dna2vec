# dna2vec

**Dna2vec** is an open-source library to train distributed representations
of variable-length k-mers.

For more information, please refer to the paper: [dna2vec: Consistent vector representations of variable-length k-mers](https://arxiv.org/abs/1701.06279)

This repo is fork of the original [pnpnpn/dna2vec](https://github.com/pnpnpn/dna2vec) repo. The upgrades are:

* runs within Docker container
* uses latest versions of packages

No Installation Required
---

To run the script just type the following command in terminal
```bash
docker run --rm -v $(pwd):/app --user 1000 alperyilmaz/dna2vec python3 scripts/train_dna2vec.py -c configs/small_example2.yml
```
The container mounts the working directory, thus files are read in or write out to folders within working directory. Just put your fasta files into a folder and edit config file and then start training.

For details about usage, please refer to  [pnpnpn/dna2vec](https://github.com/pnpnpn/dna2vec) repo.


License
---
This software is licensed under the [MIT license](http://en.wikipedia.org/wiki/MIT_License)
