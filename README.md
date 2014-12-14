nlpbox
========

A [Vagrant] environment providing a variety of NLP toolkits, 
  including: 
  
* [NLTK]
* [SRILM]
* [kaldi]
* [RNNLM]

This project is inspired by ([Madnani, 2009]), particularly 
the [swig-srilm] project to provide Python bindings to the SRILM C code.

Requirements
------------
 - [vagrant] ([VirtualBox])
 - [Ansible]

Installation
-----

To install ansible:

```sudo pip install ansible --upgrade```

Then, inside the repository, run: 

```vagrant up```

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
[kaldi]:http://kaldi.sourceforge.net/about.html
[RNNLM]:http://rnnlm.org/
[NLTK]:http://www.nltk.org/
