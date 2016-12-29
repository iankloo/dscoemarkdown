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
    footer <- paste(system,'style/disclaimer.html',sep='')
  } else if(disclaimer == FALSE){
    footer <- paste(system,'style/noDisclaimer.html',sep='')
  }
  
  if(logo == TRUE){
    css <- paste(system,'style/dscoeMarkdownLogo.css',sep='')
  } else if(logo == FALSE){
    css <- paste(system,'style/dscoeMarkdownNoLogo.css',sep='')
  }
  
  rmarkdown::html_document(css=css, includes=rmarkdown::includes(after_body=footer))

}
