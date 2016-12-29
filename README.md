# DSCOE Markdown Package

This package was created for DSCOE products in order to unify formatting.

Using this package, you can extend knitr to automatically use the DSCOE format.

## Usage

You can install this package using the devtools github installer:

```{r}
require(devtools)
devtools::install_github("iankloo/dscoemarkdown")
```

***There is a known issue with linux users.  Until I can get a more elgant fix, you can use the following lines to install the package on linux:

```{r}
require(devtools)
devtools::install_github("iankloo/dscoemarkdown", ref = 'linux')
```

If that goes smoothly, you can now include this line in the header of your R Markdown Documents:

```{r}
output: dscoemarkdown::dscoe
```

An example full header is:

```{r}
---
title: "Demo Header"
author: "Ian Kloo"
date: "September 2016"
output: dscoemarkdown::dscoe
---
```

## Styling

The base styling comes from <a href='https://edwardtufte.github.io/tufte-css/'>Edward Tufte's github page</a>. Tufte is known for simple and readable aesthetics, so this was a good place to start.  

This styling is very simple, in that it does not require any javascript libraries (such as jQuery) to do the styling.  These libraries make it much more difficult to share/post documents.  You may still need to include javascript libraries as part of your work, but at least there won't be any additional libraries needed for styling alone.

## Options

You have the option to remove the DSCOE logo and/or the disclaimer.  We ask that you leave these on for DSCOE posts, but if you want to use the framework elsewhere, please feel free to remove them.  

By default, both the logo and disclaimer are included.  To change this you can specify options like this:

```{r}
---
title: "DSCOE Markdown Example"
author: "Ian Kloo"
date: "September 2016"
output: 
  dscoemarkdown::dscoe:
    logo: FALSE
    disclaimer: FALSE
---
```

## Development

As it stands, the styling in this package is very basic.  If you want to propose any changes, make an "issue" or clone the repo and push your own branch.

## Example

![alt tag](https://github.com/iankloo/dscoemarkdown/blob/master/dscoeMarkdownExample.png)

