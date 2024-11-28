#' millis_mode
#'
#'  Mode function: all the credits go to stack overflow!
#'  https://stackoverflow.com/questions/2547402/how-to-find-the-statistical-mode
#' @return Mode function
#' @export


millis_mode <- function(x) {
  t <- table(x)
  names(t)[ which.max(t) ]
}

