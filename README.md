# Workflow and organization for statistical projects

This repository contains three things:
* slides.pdf (Slides from the talk)
* skeleton (This is an empty project, no code, just boilerplate files)
* example-project (This is the final version of the example project I showed, with documented and tested functions

## Necessary files to set up a "pseudopackage"

This are the files in `skeleton` that you would need to copy over to your package in order to set it up for use with the tools I mentioned:

* DESCRIPTION (obviously, change the name to your name, rename the project if you want, etc.)
* `***.Rproj` project file (obviously, change the name from `skeleton.Rproj` to something appropriate for your project
* `tests` directory: Add your tests to `tests/tinytest`

## Keyboard shortcuts

* Ctrl+Shift+L: Load all
* Ctrl+Shift+D: Documentation
* Ctrl+Shift+X: Run all examples
* Ctrl+Shift+T: Run all tests

## Packages

More information on the packages mentioned in the slides:

* [devtools](https://devtools.r-lib.org/)
* [roxygen2](https://roxygen2.r-lib.org/)
* [tinytest](https://cran.r-project.org/web/packages/tinytest/vignettes/using_tinytest.pdf)
