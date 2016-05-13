#' Datasets from the ICIJ Offshore Leaks Database
#'
#' This contains five datasets provided as CSV files by the ICIJ Offshore Leaks
#' Database, as tbl_df objects (a form of data frame) that can easily be explored
#' in R.
#'
#' @details This contains data about four types of nodes: Entities, Officers,
#' Intermediaries, and Addresses. For definitions of each of these, see
#' the ICIJ page here: \url{https://offshoreleaks.icij.org/pages/about#terms_definition}.
#' It also contains an \code{all_edges} dataset that links them together.
#'
#' @source The International Consortium of Investigative Journalists. See here
#' for more: \url{https://offshoreleaks.icij.org/pages/database}
#'
#' @examples
#'
#' library(dplyr)
#' Entities %>%
#'   count(countries, sort = TRUE)
#'
#' Intermediaries %>%
#'   count(countries, sort = TRUE)
#'
#' @name offshore_datasets
"Entities"

#' @rdname offshore_datasets
"Officers"

#' @rdname offshore_datasets
"Intermediaries"

#' @rdname offshore_datasets
"Addresses"

#' @rdname offshore_datasets
"all_edges"
