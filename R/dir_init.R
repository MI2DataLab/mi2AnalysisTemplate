#' Create directory structure for analysis
#'
#' @param path path to working directory (not ending in "/")
#' @param name project name (no spaces or special signs)
#'
#' @export
#'

create_dir_structure <- function(path, name) {
  dir.create(paste(path, "data", sep = "/"))
  dir.create(paste(path, "misc", sep = "/"))
  dir.create(paste(path, "R", sep = "/"))

  file.create(paste(path, paste0(name, ".Rproj"), sep = "/"))
  fileProj <- file(paste(path, paste0(name, ".Rproj"), sep = "/"))
  writeLines(
    c(
      "Version: 1.0",
      "",
      "RestoreWorkspace: No",
      "SaveWorkspace: No",
      "AlwaysSaveHistory: No",
      "",
      "EnableCodeIndexing: Yes",
      "UseSpacesForTab: Yes",
      "NumSpacesForTab: 2",
      "Encoding: UTF-8",
      "",
      "RnwWeave: Sweave",
      "LaTeX: pdfLaTeX",
      "",
      "AutoAppendNewline: Yes",
      "StripTrailingWhitespace: Yes"
    ),
    fileProj
  )
  close.connection(fileProj)
}
