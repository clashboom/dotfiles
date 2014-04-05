# README

My personal desktop environment of choice. This serves as a reference for setting it up. Credit everywhere it's due.

_OS:_ &#35;! Linux  
_Languages:_ Python, HTML, CSS  
_Key components:_ 
 - [Vim](www.vim.org/) is my text editor of choice
 - [virtualenv](http://www.virtualenv.org/en/latest/virtualenv.html) is a tool to create isolated Python environments.
 - [Google App Engine](https://developers.google.com/appengine) is a platform as a service cloud computing platform for developing and hosting web applications in Google-managed data centers
  
## &#35;! Setup
After finishing post-install script:

Sources:
[The definitive guide to proprietary AMD graphics driver](http://crunchbang.org/forums/viewtopic.php?id=17948&p=5)
[How I install Ati drivers on Crunchbang Statler and Debian Squeeze](http://crunchbang.org/forums/viewtopic.php?id=15952)

```
$sudo apt-get install dkms linux-headers-$(uname -r) fglrx-driver fglrx-control xvba-va-driver
```


[**virtualenvwrapper**](http://virtualenvwrapper.readthedocs.org/en/latest/) 


## Installing Vim

Sources:
https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source

```
$sudo apt-get install dkms linux-headers-$(uname -r) fglrx-driver fglrx-control xvba-va-driver
```
The above will install the drivers, control software, video hardware acceleration and other recommended packages. DKMS will build the required module for your kernel. Depending on what release of Debian you're using, you'll get different driver versions or you may choose to force a testing/unstable/experimental package install on apt-get. 

```
sudo aticonfig --initial
```
Setup an initial Xorg configuration

Starting X you can check if it's installed properly:
```
$ fglrxinfo
display: :0.0  screen: 0
OpenGL vendor string: Advanced Micro Devices, Inc.
OpenGL renderer string: AMD Radeon HD 7800M Series 
OpenGL version string: 4.2.12217 Compatibility Profile Context 12.104
```
And use the AMD/ATI graphical control utility to further setup (root is required to change xorg.conf):
```
$ gksudo amdcccle
```




