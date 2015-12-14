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
rocks add roll *.iso
rocks enable roll chm
(cd /export/rocks/install; rocks create distro)
rocks run roll chmd | bash
```

### What is installed

The roll installs chm and a configuration file in:

```Bash
/opt/chm  -- CHM application
/opt/modulefiles/applications/chm -- environment modules
/etc/ld.so.conf.d/chm.conf -- paths to matlab shared libraries
```

### Testing

Once installed this roll can be tested by running **/opt/chm/test_chm_install.sh** script.  This script will
run the two main programs for chm **CHM_train.sh** and **CHM_test.sh** and verify they generate output and don't
fail.  If successful, script exits with 0 exit code and success message.  
Warning: Accuracy of the answer is not checked.

Example of test:
```Bash
$ /opt/chm/test_chm_install.sh 

Running test of chm programs CHM_train.sh and CHM_test.sh (5 minutes)

Creating /tmp/testchm0d783641-c584-4814-b6fc-2727673df30e

If this script fails the directory may need to be removed manually

                            < M A T L A B (R) >
                  Copyright 1984-2015 The MathWorks, Inc.
                   R2015a (8.5.0.197613) 64-bit (glnxa64)
                             February 12, 2015

 
For online documentation, see http://www.mathworks.com/support
For product information, visit www.mathworks.com.
 

	Academic License

Extracting features ... stage 1 level 0 
Start learning LDNN ... stage 1 level 0 
Run clustering...Done. It took 0.198802  
Number of training samples = 19000 
Epoch No. 1 ... error = 0.132816 
Epoch No. 2 ... error = 0.109392 
Epoch No. 3 ... error = 0.101695 
Epoch No. 4 ... error = 0.096493 
Epoch No. 5 ... error = 0.092175 
Epoch No. 6 ... error = 0.088537 
Epoch No. 7 ... error = 0.085437 
Epoch No. 8 ... error = 0.082890 
Epoch No. 9 ... error = 0.080423 
Epoch No. 10 ... error = 0.078288 
Epoch No. 11 ... error = 0.076422 
Epoch No. 12 ... error = 0.074477 
Epoch No. 13 ... error = 0.072888 
Epoch No. 14 ... error = 0.071441 
Epoch No. 15 ... error = 0.069973 
Generating outputs ... stage 1 level 0 
Extracting features ... stage 1 level 1 
Start learning LDNN ... stage 1 level 1 
Run clustering...Done. It took 0.021572  
Number of training samples = 4800 
Epoch No. 1 ... error = 0.147928 
Epoch No. 2 ... error = 0.132322 
Epoch No. 3 ... error = 0.131052 
Epoch No. 4 ... error = 0.125102 
Epoch No. 5 ... error = 0.123495 
Epoch No. 6 ... error = 0.123825 
Epoch No. 7 ... error = 0.121625 
Epoch No. 8 ... error = 0.123061 
Epoch No. 9 ... error = 0.120772 
Epoch No. 10 ... error = 0.117798 
Epoch No. 11 ... error = 0.118322 
Epoch No. 12 ... error = 0.117683 
Epoch No. 13 ... error = 0.113678 
Epoch No. 14 ... error = 0.113840 
Epoch No. 15 ... error = 0.115216 
Generating outputs ... stage 1 level 1 
Extracting features ... stage 2 level 0 
Start learning LDNN ... stage 2 level 0 
Run clustering...Done. It took 0.309186  
Number of training samples = 19000 
Epoch No. 1 ... error = 0.109606 
Epoch No. 2 ... error = 0.106958 
Epoch No. 3 ... error = 0.105982 
Epoch No. 4 ... error = 0.105314 
Epoch No. 5 ... error = 0.104796 
Epoch No. 6 ... error = 0.104333 
Generating outputs ... stage 2 level 0 
Running << CHM_train('/opt/chm/test/trainimages/*.png','/opt/chm/test/trainlabels/*.png','./temp/',2,1,0); >> took 146.434537 seconds

                            < M A T L A B (R) >
                  Copyright 1984-2015 The MathWorks, Inc.
                   R2015a (8.5.0.197613) 64-bit (glnxa64)
                             February 12, 2015

 
For online documentation, see http://www.mathworks.com/support
For product information, visit www.mathworks.com.
 

	Academic License

Running << CHM_test('/opt/chm/test/trainimages/1.png','/tmp/testchm0d783641-c584-4814-b6fc-2727673df30e','auto',[0 0],'./temp',[],'true'); >> took 5.941403 seconds

Tests run successfully

Removing /tmp/testchm0d783641-c584-4814-b6fc-2727673df30e

```


### CHM License

```Bash
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
```
