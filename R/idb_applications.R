#' List applications
#'
#' @export
#' @param ... curl options passed on to \code{\link[crul]{HttpClient}}
#' @return a tibble
#' @examples \dontrun{
#' idb_applications()
#' }
idb_applications <- function(...) {
  tab <- get_table(idb_GET(file.path(idb_base(), "db/a.php"), list(), ...))
  tab <- stats::setNames(
    tab,
    c('no', 'name', 'description', 'no_indices',
      'no_sensors', 'no_references')
  )
  return(tab)
}
