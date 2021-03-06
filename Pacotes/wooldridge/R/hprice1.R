#' hprice1
#'
#' Wooldridge Source: Collected from the real estate pages of the Boston Globe during 1990. These are homes that sold in the Boston, MA area. Data loads lazily.
#'
#' @section Notes: Typically, it is very easy to obtain data on selling prices and characteristics of homes, using publicly available data bases. It is interesting to match the information on houses with other information – such as local crime rates, quality of the local schools, pollution levels, and so on – and estimate the effects of such variables on housing prices.
#'
#' Used in Text: pages 110, 153-154, 160-161, 165, 211-212, 221, 222, 234, 278, 280, 299, 307
#'
#' @docType data
#'
#' @usage data('hprice1')
#'
#' @format A data.frame with 88 observations on 10 variables:
#' \itemize{
#'  \item \strong{price:} house price, $1000s
#'  \item \strong{assess:} assessed value, $1000s
#'  \item \strong{bdrms:} number of bdrms
#'  \item \strong{lotsize:} size of lot in square feet
#'  \item \strong{sqrft:} size of house in square feet
#'  \item \strong{colonial:} =1 if home is colonial style
#'  \item \strong{lprice:} log(price)
#'  \item \strong{lassess:} log(assess
#'  \item \strong{llotsize:} log(lotsize)
#'  \item \strong{lsqrft:} log(sqrft)
#' }
#' @source \url{https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041}
#' @examples  str(hprice1)
"hprice1"
 
 
