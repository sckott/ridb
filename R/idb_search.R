#' Search remote sensing indices
#'
#' @export
#' @param query (character) query string
#' @param ... curl options passed on to \code{\link[crul]{HttpClient}}
#'
#' @return xxxx
idb_search <- function(query, ...) {
  stop("not working yet", call. = FALSE)
  # query <- ct(list(func = 'PerformSearch', query = query,
  #                  coll = coll, target = target, boost = boost,
  #                  fields = fields, hits = hits, offset = offset,
  #                  sortby = sortby))
  # res <- idb_GET(query, ...)
  # if (raw) return(res) else return(bs_parse(res, parse))
}
