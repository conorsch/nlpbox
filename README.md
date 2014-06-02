srilmbox
========

A [Vagrant] environment leveraging the [SRILM] toolkit. 
This project is inspired by ([Madnani, 2009]), particularly 
the [swig-srilm] project to provide Python bindings to the SRILM C code.

Requirements
------------
 - [vagrant]
 - [VirtualBox]

Usage
-----

From the root of the repository, simply run: 

```vagrant up```

Doing so will run the following automated processes:

  1. Create a virtual machine (VM) running Ubuntu 14.04 LTS 32-bit.
  2. Install development packages for compiling projects from source.
  3. Compile and install the SRILM toolkit.
  4. Compile Python bindings for SRILM, using [swig-srilm].

You can log into the machine using:

```vagrant ssh```

and use the installed packages in that environment.

[Madnani, 2009]:http://ojs.pythonpapers.org/index.php/tppsc/article/view/83
[SRILM]:http://www.speech.sri.com/projects/srilm/download.html
[vagrant]:http://www.vagrantup.com/
[VirtualBox]:http://www.virtualbox.org/
[swig-srilm]:https://github.com/desilinguist/swig-srilm
