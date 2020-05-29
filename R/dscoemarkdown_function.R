#' Run Markdown
#'
#'
#'
#' @export
#'
#'

dscoe <- function(logo=TRUE, disclaimer=TRUE) {
  system <- system.file('',package='dscoemarkdown')

  if(disclaimer == TRUE){
    footer <- paste(system,'inst/style/disclaimer.html',sep='')
  } else if(disclaimer == FALSE){
    footer <- paste(system,'inst/style/noDisclaimer.html',sep='')
  }

  if(logo == TRUE){
    css <- paste(system,'inst/style/dscoemarkdownLogo.css',sep='')
  } else if(logo == FALSE){
    css <- paste(system,'inst/style/dscoemarkdownNoLogo.css',sep='')
  }

  rmarkdown::html_document(css=css, includes=rmarkdown::includes(after_body=footer))

}
