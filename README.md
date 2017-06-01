# Silverstripe Twitter Bootstrap Theme - (c) Andre Lohmann (and others) 2016

## Silverstripe Version 3.3.x
## Bootstrap Version 3.3.6

## Maintainer Contact 
 * Andre Lohmann
   <lohmann.andre (at) gmail (dot) com>

## Requirements

Silverstripe 3.6.x

## Introduction

This Theme provides a general Page.ss Template as a startingpoint for a new Project. 

put the follwoing post install and post updates scripts into your composer.json

```

    "scripts": {
        "post-install-cmd": [
            "sed -i -e 's/$.support.focusinBubbles = !!($.browser.msie);/$.support.focusinBubbles = !!($.browser) && !$.browser.msie;/g' framework/thirdparty/jquery-entwine/dist/jquery.concrete-dist.js",
            "sed -i -e 's/$.support.focusinBubbles = !!($.browser.msie);/$.support.focusinBubbles = !!($.browser) && !$.browser.msie;/g' framework/thirdparty/jquery-entwine/dist/jquery.entwine-dist.js"
        ],
        "post-update-cmd": [
            "sed -i -e 's/$.support.focusinBubbles = !!($.browser.msie);/$.support.focusinBubbles = !!($.browser) && !$.browser.msie;/g' framework/thirdparty/jquery-entwine/dist/jquery.concrete-dist.js",
            "sed -i -e 's/$.support.focusinBubbles = !!($.browser.msie);/$.support.focusinBubbles = !!($.browser) && !$.browser.msie;/g' framework/thirdparty/jquery-entwine/dist/jquery.entwine-dist.js"
        ]
    },
```
