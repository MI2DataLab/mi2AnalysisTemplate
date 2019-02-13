#' Create directory structure for analysis
#'
#' @param path path to working directory (not ending in "/")
#'
#' @export
#'

create_dir_structure <- function(path) {
  dir.create(paste(path, "data", sep = "/"))
  dir.create(paste(path, "misc", sep = "/"))
  dir.create(paste(path, "R", sep = "/"))
}
