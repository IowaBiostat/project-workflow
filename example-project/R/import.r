#' Import one month of data
#' 
#' @param Month      File handle for raw data, excluding the `data/` and `.txt` extension (character)
#' @param removeNA   Remove any rows with missing data? Default: TRUE. (logical)
#' 
#' @return A `data.table`
#' 
#' @examples 
#' May <- import('may')
#' head(May)
#' @export

import <- function(Month, removeNA=TRUE) {
  out <- fread(paste0('data/', Month, '.txt'))
  if (removeNA) out <- out[complete.cases(out)]
  out$Heat <- cut(out$Temp, breaks=c(50, 72, 82, 100), labels=c("Cool", "Mild", "Hot"))
  setnames(out, 'Solar.R', 'Radiation')
  out[, logOzone := log(Ozone)]
  out
}
