#' corn
#'
#' Wooldridge Source: G.E. Battese, R.M. Harter, and W.A. Fuller (1988), “An Error-Components Model for Prediction of County Crop Areas Using Survey and Satellite Data,” Journal of the American Statistical Association 83, 28-36. This small data set is reported in the article. Data loads lazily.
#'
#' @section Notes: You could use these data to illustrate simple regression when the population intercept should be zero: no corn pixels should predict no corn planted. The same can be done with the soybean measures in the data set.
#'
#' Used in Text: pages 791-792
#'
#' @docType data
#'
#' @usage data('corn')
#'
#' @format A data.frame with 37 observations on 5 variables:
#' \itemize{
#'  \item \strong{county:} county number
#'  \item \strong{cornhec:} corn per hectare
#'  \item \strong{soyhec:} soybeans per hectare
#'  \item \strong{cornpix:} corn pixels per hectare
#'  \item \strong{soypix:} soy pixels per hectare
#' }
#' @source \url{https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041}
#' @examples  str(corn)
"corn"
 
 
