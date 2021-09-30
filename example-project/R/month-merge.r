#' Import and merge two months of data
#' 
#' @param x,y   The `Month` arguments to `import()`, which is called twice (character)
#' @param ...   Additional arguments to `import()`
#' 
#' @return A single `data.table` with two months of data
#' 
#' @examples 
#' DT <- month_merge('may', 'june')
#' print(DT)
#' @export

month_merge <- function(x, y, ...) {
  X <- import(x, ...)
  #X[, Month := stringr::str_to_sentence(x)]
  X[, Month := x]
  Y <- import(y, ...)
  Y[, Month := stringr::str_to_sentence(y)]
  rbind(X, Y)
}
