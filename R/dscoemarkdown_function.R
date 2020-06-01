#' @title Generate DSCOE markdown
#'
#' @description Apply css and footer and build a DSCOE formatted markdown document
#'
#' @param logo a boolean representing whether or not to inclue the DSCOE logo
#' @param disclaimer a boolean representing whether or not to include the disclaimer footer
#'
#' @examples
#' ---
#' #title: "Demo Header"
#' #author: "Ian Kloo"
#' #date: "September 2016"
#' #output: dscoemarkdown::dscoe
#' ---
#'
#' ---
#' #title: "Demo Header"
#' #author: "Ian Kloo"
#' #date: "September 2016"
#' #output:
#'  #  dscoemarkdown::dscoe:
#'  #  logo: FALSE
#'  #  disclaimer: FALSE
#' ---
#'
#' @export

dscoe <- function(logo=TRUE, disclaimer=TRUE) {
  system <- system.file('',package='dscoemarkdown')

  if(.Platform$OS.type == 'windows'){

    if(disclaimer == TRUE){
      footer <- paste(system,'/style/disclaimer.html',sep='')
    } else if(disclaimer == FALSE){
      footer <- paste(system,'/style/noDisclaimer.html',sep='')
    }

    if(logo == TRUE){
      css <- paste(system,'/style/dscoemarkdownLogo.css',sep='')
    } else if(logo == FALSE){
      css <- paste(system,'/style/dscoemarkdownNoLogo.css',sep='')
    }

  } else if (.Platform$OS.type == "unix") {

    if(disclaimer == TRUE){
      footer <- paste(system,'style/disclaimer.html',sep='')
    } else if(disclaimer == FALSE){
      footer <- paste(system,'style/noDisclaimer.html',sep='')
    }

    if(logo == TRUE){
      css <- paste(system,'style/dscoeMarkdownLogo.css',sep='')
    } else if(logo == FALSE){
      css <- paste(system,'style/dscoeMarkdownNoLogo.css',sep='')
    }

  }



  rmarkdown::html_document(css=css, includes=rmarkdown::includes(after_body=footer))

}
