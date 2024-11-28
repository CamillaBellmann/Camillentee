#' milli_quarto
#'
#' milli_quarto provides a clean set-up for all PDF documents and can be copy-pasted
#' @return Quarto header
#' @export

milli_quarto <- function(){
  cat(
    "---
title: \" \"
subtitle: \" \"
author:
  - \"Name\"
  - \"Lecturer: Name\"
date: today
date-format: \"D. MMMM YYYY\"
lang: eng-GB
subparagraph: true
format:
  pdf:
    documentclass: scrreprt
number-sections: false
toc: false
fontsize: 11pt
linestretch: 1
geometry: left=2.5cm,right=2.5cm,top=3cm,bottom=3cm
bibliography: bibliography.bib
header-includes:
  - \\usepackage{pdflscape}
  - \\usepackage{fontspec}
  - \\setmainfont{Century Gothic} % Requires Century Gothic to be installed on your system
  - \\usepackage{fvextra}
  - \\DefineVerbatimEnvironment{Highlighting}{Verbatim}{breaklines=true,commandchars=\\\\\\{\\},breaksymbol=}
---\n"
  )
}

