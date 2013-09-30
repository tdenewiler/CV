# What is this

This is a repository that contains my up-to-date CV in LaTeX.

You can find the live versions of the CV on http://denewiler.us/cv

This repository was forked from https://github.com/raphink/CV.

# How to build

## Simple usage

To build all the versions (PDF and HTML), type `make`.


## PDF version

In order to build the PDF versions of this CV, you will need:

   * A LaTeX distribution (TeXLive 2012 recommended);
   * LuaTeX;
   * MinionPro and MyriadPro fonts (you can find them with Acrobat Reader).

TO build the PDF CVs, type `make pdf`.


## HTML version

The HTML version of this CV is generated from the PDF version, using [pdf2htmlex](https://github.com/coolwanglu/pdf2htmlEX). Once you have `pdf2htmlex` in your `PATH`, type `make html` to build the files.


## Using cool octicons

Issue solved at https://github.com/raphink/CV/issues/2, solution is to copy the following file:
https://github.com/geniusgithub/github-android/raw/master/assets/octicons-regular-webfont.ttf

to /usr/local/share/fonts. This will cause the LinkedIn and GitHub icons to show up properly.


## Adding GitHub ribbon to html page

To add a ribbon to your html page that says "Fork me on GitHub" see:
https://github.com/blog/273-github-ribbons

I set the Makefile to automatically append the line I want to the end of the html file.
