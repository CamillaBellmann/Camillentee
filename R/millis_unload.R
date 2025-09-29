#'  millis_unload
#'
#'  This function unloads most packages.
#'  Basics of R are not unloaded to avoid a crash.

#' @return Unloading Packages
#' @export


millis_unload <- function() {
  base_pkgs <- c("stats","graphics","grDevices","utils","datasets","methods","base")
  keep <- paste0("package:", base_pkgs)
  
  attached_pkgs <- search()[grepl("^package:", search())]
  
  to_unload <- setdiff(attached_pkgs, keep)
  
  if (length(to_unload) > 0) {
    for (pkg in to_unload) {
      try(detach(pkg, character.only = TRUE, unload = TRUE), silent = TRUE)
    }
    message("Unloaded packages: ", paste(to_unload, collapse = ", "))
  } else {
    message("Nothing to unload – only base packages remain.")
  }
  
  invisible(to_unload)
}
