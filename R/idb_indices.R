#' List indices
#'
#' @export
#' @param ... curl options passed on to \code{\link[crul]{HttpClient}}
#' @return a tibble
#' @examples \dontrun{
#' idb_indices()
#' }
idb_indices <- function(...) {
  get_table(idb_GET(file.path(idb_base(), "db/i.php"), list(), ...))
}
