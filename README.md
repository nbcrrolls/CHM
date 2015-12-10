# CHM Roll

This roll installs Cascaded Hierarchical Model (CHM) 

https://www.sci.utah.edu/software/chm.html

Description from site above:

Cascaded hierarchical model is an image segmentation framework, which learns contextual information in a hierarchical framework. At each level of the hierarchy, a classifier is trained based on downsampled input image and outputs of previous levels. Our model then incorporates the resulting multi-resolution contextual information into a classifier to segment the input image at original resolution. We repeat this procedure by cascading the hierarchical framework to improve the segmentation accuracy.

### Citation

If you use this package please cite the following:

M. Seyedhosseini, M. Sajjadi, and T. Tasdizen. "Image Segmentation with Cascaded Hierarchical Models and Logistic Disjunctive Normal Networks" In ICCV 2013

### Building the roll

**Dependencies**

* The matlab roll must be installed on hosts that run this application

A successful build will create the file chm-*.disk1.iso

### Installing

To install, execute these instructions on a Rocks frontend:

```Bash
# rocks add roll *.iso
# rocks enable roll chm
# (cd /export/rocks/install; rocks create distro)
# rocks run roll chmd | bash
```

### What is installed

The roll installs chm and a configuration file in:

```Bash
/opt/chm  -- CHM application
/opt/modulefiles/applications/chm -- environment modules
/etc/ld.so.conf.d/chm.conf -- paths to matlab shared libraries
```

### Testing



### CHM License

Copyright (c) 2013,
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in
      the documentation and/or other materials provided with the distribution

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.
