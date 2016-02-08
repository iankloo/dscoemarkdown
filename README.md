# DSCOE Markdown Package

This package was created for DSCOE products in order to unify formatting.  The framework is based on a post by @hrbrmstr on R-Bloggers and his associated package: markdowntemplates.

Using this package, you can extend knitr to automatically use the DSCOE format.

## Usage

You can install this package using the devtools github installer:

```{r}
require(devtools)
devtools::install_github("iankloo/dscoemarkdown")
```

If that goes smoothly, you can now include this line in the header of your R Markdown Documents:

```{r}
output: dscoemarkdown::dscoe
```

An example full header is:

```{r}
---
title: "Clock Chart Shading"
author: "<p>Ian Kloo</p>
<p>ian.p.kloo.civ@mail.mil</P>"
date: "September 2015"
output: dscoemarkdown::dscoe
---
```

## Styling

The base styling comes from Bulma framework. This was selected because it is a fairly robust, attractive CSS styling framework that does not require JavaScript libraries.  It still may be necessary to reference JavaScript libraries in your products, but at least none will be called by default.

## Development

As it stands, the styling in this package is very basic.  If you want to propose any changes, make an "issue" or clone the repo and push your own branch.

The best way to make changes is to modify the CSS Stylesheet.  Please don't change the Bulma base stylesheet, instead go to inst/rmarkdown/templates/dscoe/resources/CUSTOMIZE_ME.css and make your changes.  You can also change the base html sheet that is located in inst/rmarkdown/templates/dscoe/resources/base.

## Example

![alt tag](https://github.com/iankloo/dscoemarkdown/blob/master/dscoe_styling.png)

