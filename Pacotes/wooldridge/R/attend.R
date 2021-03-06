#' attend
#'
#' Wooldridge Source: These data were collected by Professors Ronald Fisher and Carl Liedholm during a term in which they both taught principles of microeconomics at Michigan State University. Professors Fisher and Liedholm kindly gave me permission to use a random subset of their data, and their research assistant at the time, Jeffrey Guilfoyle, who completed his Ph.D. in economics at MSU, provided helpful hints. Data loads lazily.
#'
#' @section Notes: The attendance figures were obtained by requiring students to slide their ID cards through a magnetic card reader, under the supervision of a teaching assistant. You might have the students use final, rather than the standardized variable, so that they can see the statistical significance of each variable remains exactly the same. The standardized variable is used only so that the coefficients measure effects in terms of standard deviations from the average score.
#'
#' Used in Text: pages 111, 152, 199-200, 222
#'
#' @docType data
#'
#' @usage data('attend')
#'
#' @format A data.frame with 680 observations on 11 variables:
#' \itemize{
#'  \item \strong{attend:} classes attended out of 32
#'  \item \strong{termGPA:} GPA for term
#'  \item \strong{priGPA:} cumulative GPA prior to term
#'  \item \strong{ACT:} ACT score
#'  \item \strong{final:} final exam score
#'  \item \strong{atndrte:} percent classes attended
#'  \item \strong{hwrte:} percent homework turned in
#'  \item \strong{frosh:} =1 if freshman
#'  \item \strong{soph:} =1 if sophomore
#'  \item \strong{missed:} number of classes missed
#'  \item \strong{stndfnl:} (final - mean)/sd
#' }
#' @source \url{https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041}
#' @examples  str(attend)
"attend"
 
 
