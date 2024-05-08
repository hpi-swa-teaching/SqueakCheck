# SqueakCheck [![Build Status](https://travis-ci.org/hpi-swa-teaching/SqueakCheck.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/SqueakCheck)

SqueakCheck is a port of Haskell's QuickCheck.  

Read an introduction into SqueakCheck [here](https://web.archive.org/web/20200806062146/https://tech.labs.oliverwyman.com/blog/2011/09/13/checking-squeak-quickly/).  

Read the [QuickCheck Manual](http://www.cse.chalmers.se/~rjmh/QuickCheck/manual.html).

## Installation
Note: Currently only Squeak versions after 5.1 are supported (5.2 or 6.0alpha).

1. Load [Metacello](https://github.com/dalehenrich/metacello-work)
2. Load the testing framework with the following command:

``` Smalltalk
Metacello new
    baseline: 'SqueakCheck';
    repository: 'github://hpi-swa-teaching/SqueakCheck:master/src';
    load.
```
