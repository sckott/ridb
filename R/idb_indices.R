#' List indices
#'
#' @export
#' @template commonargs
#' @examples \dontrun{
#' idb_indices()
#' }
idb_indices <- function(...) {
  tab <- get_table(idb_GET(file.path(idb_base(), "db/i.php"), list(), ...))
  tab <- stats::setNames(
    tab,
    c('no', 'name', 'abbreviation', 'formula', 'variables',
      'source', 'no_sensors', 'no_applications', 'no_references')
  )
  return(tab)
}


