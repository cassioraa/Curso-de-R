#' alcohol
#'
#' Wooldridge Source: Terza, J.V. (2002), “Alcohol Abuse and Employment: A Second Look,” Journal of Applied Econometrics 17, 393-404. I obtained these data from the Journal of Applied Econometrics data archive at http://qed.econ.queensu.ca/jae/. Data loads lazily.
#'
#' @section 
#'
#' Used in Text: page 629
#'
#' @docType data
#'
#' @usage data('alcohol')
#'
#' @format A data.frame with 9822 observations on 33 variables:
#' \itemize{
#'  \item \strong{abuse:} =1 if abuse alcohol
#'  \item \strong{status:} out of workforce = 1; unemployed = 2, employed = 3
#'  \item \strong{unemrate:} state unemployment rate
#'  \item \strong{age:} age in years
#'  \item \strong{educ:} years of schooling
#'  \item \strong{married:} =1 if married
#'  \item \strong{famsize:} family size
#'  \item \strong{white:} =1 if white
#'  \item \strong{exhealth:} =1 if in excellent health
#'  \item \strong{vghealth:} =1 if in very good health
#'  \item \strong{goodhealth:} =1 if in good health
#'  \item \strong{fairhealth:} =1 if in fair health
#'  \item \strong{northeast:} =1 if live in northeast
#'  \item \strong{midwest:} =1 if live in midwest
#'  \item \strong{south:} =1 if live in south
#'  \item \strong{centcity:} =1 if live in central city of MSA
#'  \item \strong{outercity:} =1 if in outer city of MSA
#'  \item \strong{qrt1:} =1 if interviewed in first quarter
#'  \item \strong{qrt2:} =1 if interviewed in second quarter
#'  \item \strong{qrt3:} =1 if interviewed in third quarter
#'  \item \strong{beertax:} state excise tax, $ per gallon
#'  \item \strong{cigtax:} state cigarette tax, cents per pack
#'  \item \strong{ethanol:} state per-capita ethanol consumption
#'  \item \strong{mothalc:} =1 if mother an alcoholic
#'  \item \strong{fathalc:} =1 if father an alcoholic
#'  \item \strong{livealc:} =1 if lived with alcoholic
#'  \item \strong{inwf:} =1 if status > 1
#'  \item \strong{employ:} =1 if employed
#'  \item \strong{agesq:} age^2
#'  \item \strong{beertaxsq:} beertax^2
#'  \item \strong{cigtaxsq:} cigtax^2
#'  \item \strong{ethanolsq:} ethanol^2
#'  \item \strong{educsq:} educ^2
#' }
#' @source \url{https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041}
#' @examples  str(alcohol)
"alcohol"
 
 
