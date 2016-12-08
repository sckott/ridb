#' List sensors
#'
#' @export
#' @param ... curl options passed on to \code{\link[crul]{HttpClient}}
#' @return a tibble
#' @examples \dontrun{
#' idb_sensors()
#' }
idb_sensors <- function(...) {
  tab <- get_table(idb_GET(file.path(idb_base(), "db/s.php"), list(), ...))
  tab <- stats::setNames(
    tab,
    c('no', 'name', 'bands', 'spectrum', 'spatial_resolution',
      'include', 'platform', 'operator', 'launch_date', 'comment',
      'no_indices', 'no_applications', 'no_references')
  )
  return(tab)

}
