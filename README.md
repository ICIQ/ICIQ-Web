---
layout: default
title: About this site

---

[![Build Status](https://travis-ci.org/ICIQ/iciq.github.io.svg?branch=dev)](https://travis-ci.org/ICIQ/iciq.github.io)

The website for the ICIQ community
==================================

This site is mostly static HTML, generated by [Jekyll](https://github.com/mojombo/jekyll)
from [source on Github](https://github.com/iciq/iciq.github.io).  You are free
to fork and modify it for your own needs.
It was modified from [Xiaodong Qi's Noteblog site](https://i2000s.github.io) and was originally based on Carl Boettiger's
[labnotebook site](http://carlboettiger.info) and David Ketcheson's [customization](http://davidketcheson.info).
Xiaodong Qi and others published the source for their sites on Github and
releases it all under [Creative Commons](http://creativecommons.org/licenses/by/4.0/) and [MIT](http://opensource.org/licenses/MIT) licenses,
so setting this site up was as easy as following
[these instructions](http://i2000s.github.io/README.html),
filling in some account information, replacing the \_posts directory, and making a few CSS customizations.

To run the site on a local computer, you need to install Jekyll and
dependencies, run `bundle install` then `bundle exec jekyll serve` (see detailed instruction below).

Please report any errors or other feedback in the [Issue Tracker](https://github.com/iciq/iciq.github.io/issues).

Additional Site Features & Credits
==================================
* CSS generated with [bootstrap](https://github.com/twbs/bootstrap)
* [Carl Boettiger's plugins](https://github.com/cboettig/jekyll-labnotebook-plugins) for Mendeley, Github, Twitter and others
* Integrated with IPython/IJulia/Jupyter notebooks and [MathJax](https://www.mathjax.org)
* Source code hosting on [Github](https://github.com/ketch/labnotebook) with automatic deployment using [Travis-CI](http://travis-ci.org) and Rake
* Improved "related posts" plugin from [David Lynch](https://github.com/kemayo/davidlynch.org/blob/master/_plugins/related_posts.rb)
* Improved publication and citation support from [Jekyll-scholar](https://github.com/inukshuk/jekyll-scholar) with some customizations

Instruction on hosting the site locally
=======================================
I use Ubuntu 16.04 LTS OS to generate the static website from source code.
Instructions on other operating systems should be similar.

If you run Jekyll sites for the first time, you may need to install Ruby v2.2.* (tested on v2.2.4 and v2.3.0) and the `gem` development envirenment.
I was basically following [this instruction](http://tecadmin.net/install-ruby-on-rails-on-ubuntu/) on my Ubuntu,
except for the step of sourcing RVM which I used the following command line instead  
```
source ~/.rvm/scripts/rvm
```
If the source is setup correctly, `type rvm | head -n 1` should give `rvm is a function` as the output according to [this](https://rvm.io/rvm/install).
For other systems, [here](https://www.ruby-lang.org/en/documentation/installation/) is the official guide for Ruby installation.

Besides, the library of `gsl` and the `pandoc` package are recommended to install for better support to the `clarifier-reborn` and other plugins/scripts used in this site.
On Ubuntu, I use the following lines
```
sudo add-apt-repository -y ppa:marutter/c2d4u
sudo apt-get update
sudo apt-get install pandoc
sudo apt-get install gsl-bin libgsl0-dev
```
On Windows OS, `gsl` should be preinstalled in order to gem install rb-gsl.
Otherwise, the `.travis.yml` configuration file should have some basic settings to follow.

The `Gemfile` and the configuration file `_conf.yml` should include sufficient information on installing correct dependences.
Then for a routinely rendering, you only need to run the following command lines:
```
bundle install
bundle exec jekyll serve
```
Notice that, I have locked the Jekyll version to `~>2.5.3`.
If you want to use Jekyll version 3.0.0 or above, you may need to tweak the code a little bit.

If you encounter the missing credentials error for the `twitter_feed` plugin, you may need to export environmental variables `TWIT_KEY`, `TWIT_SECRET`, `TWIT_TOK` and `TWIT_TOK_SECRET` before running the jekyll server. All the credentials of the Twitter plugin should be accessible from the TWitter account used for the site.

By default, the local build should be accessible at `http://127.0.0.1:4000` on your internet browser.


Copyrights and Licenses
=======================

[MIT](http://opensource.org/licenses/MIT) license for the plugins (in the `_plugins` directory of this repo) shown initially written by Carl Boettiger or Xiaodong Qi.
Creative Commons Attributions 3.0 Unported [CC-BY](http://creativecommons.org/licenses/by/3.0/deed.en_US) license for the content originally created by David Ketcheson.
Creative Commons Attributions 4.0 [CC-BY](https://creativecommons.org/licenses/by/4.0/) license for content other than plugins originally written by Xiaodong Qi and all the other unspecified cases.
If a license is clarified at a much specified scope, that specified license should apply to the scope it covers.
You can find the full editing history of each file.
Credits should be given appropriately to the origination and the initial author at less and all following contributors if situation permits.


This website is also built with HTML KickStart (Joshua Gatcke http://www.99lime.com | HTML KickStart) which is [released under MIT Open Source license](https://github.com/joshuagatcke/HTML-KickStart#html-kickstart-is-free-and-open-source).
