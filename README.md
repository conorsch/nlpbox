srilmbox
========

A [Vagrant] environment leveraging the [SRILM] toolkit. 
This project is inspired by ([Madnani, 2009]), particularly 
the [swig-srilm] project to provide Python bindings to the SRILM C code.

Requirements
------------
 - [vagrant] ([VirtualBox])
 - [Ansible]

Installation
-----

To install ansible:

```sudo pip install ansible```

Then add this block to your `~/.ssh/config`:

```
# Necessary for ansible/vagrant provisioning
Host 127.0.0.1 localhost
    StrictHostKeyChecking no
    UserKnownHostsFile=/dev/null
```

Then, inside the repository, run: 

```vagrant up```

Doing so will run the following automated processes:

  1. Create a virtual machine (VM) running Ubuntu 14.04 LTS 32-bit.
  2. Install development packages for compiling projects from source.
  3. Compile and install the SRILM toolkit.
  4. Compile Python bindings for SRILM, using [swig-srilm].
  5. Install the `srilm` Python package, so you can `import srilm` in your Python scripts.
  6. Download all NLTK corpora.
  7. Deploy the Python web application [language-model-server] for querying ngrams.

Usage
-----

You can log into the machine using:

```vagrant ssh```

and use the installed packages in that environment. 
Try importing the package in [iPython]:

```
$ ipython

In [1]: import srilm

In [2]: srilm.<tab>
srilm.corpusStats      srilm.getCorpusPpl     srilm.getSentencePpl   srilm.getUnigramProb   srilm.howManyNgrams    srilm.readLM
srilm.deleteLM         srilm.getCorpusProb    srilm.getSentenceProb  srilm.getWordForIndex  srilm.initLM
srilm.getBigramProb    srilm.getIndexForWord  srilm.getTrigramProb   srilm.getWordProb      srilm.numOOVs
```

[Madnani, 2009]:http://ojs.pythonpapers.org/index.php/tppsc/article/view/83
[SRILM]:http://www.speech.sri.com/projects/srilm/download.html
[vagrant]:http://www.vagrantup.com/
[VirtualBox]:http://www.virtualbox.org/
[swig-srilm]:https://github.com/desilinguist/swig-srilm
[language-model-server]:https://github.com/ronocdh/language-model-server
[iPython]:http://ipython.org/
[Ansible]:http://www.ansible.com/
