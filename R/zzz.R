idb_base <- function() "http://www.indexdatabase.de"

ct <- function(l) Filter(Negate(is.null), l)

idb_GET <- function(url, query, ...){
  cli <- crul::HttpClient$new(url = url, opts = list(...))
  temp <- cli$get(query = query)
  if (temp$status_code > 201) {
    stop(sprintf("(%s) - %s", temp$status_code, temp$status_http()$message), call. = FALSE)
  }
  txt <- rawToChar(temp$content)
  x <- sub('\r\n\\s+', ' ', txt)
  iconv(txt, from = "ISO-8859-1", to = "UTF-8")
  #bs_err_catcher(temp)
  #txt <- temp$parse()
  #Encoding(txt) <- "UTF-8"
  #regexpr('[[:space:]]+', txt)
  #sub('\r\n\\s+', ' ', txt)
}

as_html <- function(x) xml2::read_html(x, encoding = "UTF-8")

get_table <- function(x) {
  tab <- rvest::html_table(as_html(x))[[1]]
  tab <- stats::setNames(
    tab,
    c('no', 'name', 'abbreviation', 'formula', 'variables',
      'source', 'no_sensors', 'no_applications', 'no_references')
  )
  tibble::as_data_frame(tab)
  # table <- xml2::xml_find_first(x, "//table")[[1]]
  # trs <- xml2::xml_find_all(table, "//tr")[-1]
  # lapply(trs, function(z) {
  #   xml2::xml_find_all(z, "td/a[contains(@href, 'db/i-single')]")
  # })
}

# bs_err_catcher <- function(x) {
#   xx <- xml2::fromJSON(x$parse())
#   if (any(vapply(c("message", "error"), function(z) z %in% names(xx), logical(1)))) {
#     stop(xx[[1]], call. = FALSE)
#   }
# }
