## ---- echo = TRUE, eval = FALSE, warning=FALSE---------------------------
#  install.packages("wooldridge")

## ---- echo = TRUE, eval = TRUE, warning=FALSE, message=FALSE-------------
library(wooldridge)

## ---- echo=FALSE, eval=TRUE, warning=FALSE, message=FALSE----------------
library(stargazer)
library(knitr)

## ---- message=FALSE, eval=FALSE------------------------------------------
#  data("wage1")
#  ?wage1

## ------------------------------------------------------------------------
log_wage_model <- lm(lwage ~ educ, data = wage1)

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE-----------
stargazer(log_wage_model, type = "html", single.row = TRUE, header = FALSE)

## ------------------------------------------------------------------------
hourly_wage_model <- lm(lwage ~ educ + exper + tenure, data = wage1)

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE-----------
stargazer(type = "html",hourly_wage_model,  single.row = TRUE, header = FALSE)

## ---- echo = TRUE, eval = TRUE, warning=FALSE, message=FALSE-------------
data("jtrain")

## ---- echo = TRUE, eval = FALSE, warning=FALSE---------------------------
#  ?jtrain
#  View(jtrain)

## ------------------------------------------------------------------------
index <- jtrain$year == 1987 & jtrain$union == 0

## ------------------------------------------------------------------------
jtrain_1987_nonunion <- jtrain[index, ]

## ------------------------------------------------------------------------
linear_model <- lm(lscrap ~ hrsemp + lsales + lemploy, data = jtrain_1987_nonunion)

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE-----------
stargazer(type = "html",linear_model,  single.row = TRUE, header = FALSE)

## ---- message=FALSE, eval=FALSE------------------------------------------
#  data("crime1")
#  ?crime1

## ---- tidy = TRUE--------------------------------------------------------
restricted_model <- lm(narr86 ~ pcnv + ptime86 + qemp86, data = crime1)

## ------------------------------------------------------------------------
restricted_model_u <- restricted_model$residuals

## ---- tidy = TRUE--------------------------------------------------------
LM_u_model <- lm(restricted_model_u ~ pcnv + ptime86 + qemp86 + avgsen + tottime, data = crime1)
summary(LM_u_model)$r.square

## ------------------------------------------------------------------------
LM_test <- nobs(LM_u_model) * 0.0015
LM_test

## ------------------------------------------------------------------------
qchisq(1 - 0.10, 2)

## ------------------------------------------------------------------------
1-pchisq(LM_test, 2)

## ---- message=FALSE, eval=FALSE------------------------------------------
#  data("hprice2")
#  ?hprice2

## ---- tidy = TRUE--------------------------------------------------------
housing_standard <- lm(scale(price)~0+scale(nox)+scale(crime)+scale(rooms)+scale(dist) + scale(stratio), data = hprice2)

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE-----------
stargazer(type = "html",housing_standard,  single.row = TRUE, header = FALSE)

## ------------------------------------------------------------------------
housing_interactive <- lm(lprice ~ lnox + log(dist) + rooms+I(rooms^2) + stratio, data = hprice2)

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE, tidy=TRUE----
stargazer(type = "html",housing_standard, housing_interactive, single.row = TRUE, header = FALSE)

## ------------------------------------------------------------------------
data("hprice1")

## ---- eval=FALSE---------------------------------------------------------
#  ?hprice1

## ---- tidy=TRUE----------------------------------------------------------
housing_qualitative <- lm(lprice ~ llotsize + lsqrft + bdrms + colonial, data = hprice1)

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE, tidy=TRUE----
stargazer(type = "html",housing_qualitative,  single.row = TRUE, header = FALSE)

## ---- message=FALSE, eval=FALSE------------------------------------------
#  data("gpa1")
#  ?gpa1

## ------------------------------------------------------------------------
gpa1$parcoll <- as.integer(gpa1$fathcoll==1 | gpa1$mothcoll)

## ------------------------------------------------------------------------
GPA_OLS <- lm(PC ~ hsGPA + ACT + parcoll, data = gpa1)

## ------------------------------------------------------------------------
weights <- GPA_OLS$fitted.values * (1-GPA_OLS$fitted.values)

GPA_WLS <- lm(PC ~ hsGPA + ACT + parcoll, data = gpa1, weights = 1/weights)

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE, tidy=TRUE----
stargazer(type = "html",GPA_OLS, GPA_WLS,  single.row = TRUE, header = FALSE)

## ---- message=FALSE, eval=FALSE------------------------------------------
#  data("rdchem")
#  ?rdchem

## ------------------------------------------------------------------------
all_rdchem <- lm(rdintens ~ sales + profmarg, data = rdchem)

## ---- tidy=TRUE----------------------------------------------------------
plot_title <- "FIGURE 9.1: Scatterplot of R&D intensity against firm sales"
x_axis <- "firm sales (in millions of dollars)"
y_axis <- "R&D as a percentage of sales"

plot(rdintens ~ sales, pch = 21, bg = "lightgrey", data = rdchem, main = plot_title, xlab = x_axis, ylab = y_axis)

## ------------------------------------------------------------------------
smallest_rdchem <- lm(rdintens ~ sales + profmarg, data = rdchem, 
                      subset = (sales < max(sales)))

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE, tidy=TRUE----
stargazer(type = "html",all_rdchem, smallest_rdchem,  single.row = TRUE, header = FALSE)

## ---- message=FALSE, eval=FALSE------------------------------------------
#  data("intdef")
#  ?intdef

## ------------------------------------------------------------------------
tbill_model <- lm(i3 ~ inf + def, data = intdef)

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE, tidy=TRUE----
stargazer(type = "html",tbill_model, single.row = TRUE, header = FALSE)

## ---- message=FALSE, eval=FALSE------------------------------------------
#  data("barium")
#  ?barium

## ---- tidy=TRUE----------------------------------------------------------
barium_imports <- lm(lchnimp ~ lchempi + lgas + lrtwex + befile6 + affile6 + afdec6, data = barium)

## ---- tidy=TRUE----------------------------------------------------------
barium_seasonal <- lm(lchnimp ~ lchempi + lgas + lrtwex + befile6 + affile6 + afdec6 + feb + mar + apr + may + jun + jul + aug + sep + oct + nov + dec, data = barium)
barium_anova <- anova(barium_imports, barium_seasonal)

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE, tidy=TRUE----
stargazer(type = "html",barium_imports, barium_seasonal,  single.row = TRUE, header = FALSE)

stargazer(type = "html",barium_anova,  single.row = TRUE, header = FALSE)

## ---- message=FALSE, eval=FALSE------------------------------------------
#  data("earns")
#  ?earns

## ------------------------------------------------------------------------
wage_time <- lm(lhrwage ~ loutphr + t, data = earns)

## ------------------------------------------------------------------------
wage_diff <- lm(diff(lhrwage) ~ diff(loutphr), data = earns)

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE, tidy=TRUE----
stargazer(type = "html",wage_time, wage_diff,  single.row = TRUE, header = FALSE)

## ---- tidy=TRUE----------------------------------------------------------
data("barium")
barium_model <- lm(lchnimp ~ lchempi + lgas + lrtwex + befile6 + affile6 + afdec6, data = barium)

## ---- tidy=TRUE----------------------------------------------------------
library(prais)
barium_prais_winsten <- prais.winsten(lchnimp ~ lchempi + lgas + lrtwex + befile6 + affile6 + afdec6, data = barium)

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE, tidy=TRUE----
stargazer(type = "html", barium_model, single.row = TRUE, header = FALSE)

## ------------------------------------------------------------------------
barium_prais_winsten

## ---- message=FALSE, eval=FALSE------------------------------------------
#  data("nyse")
#  ?nyse

## ------------------------------------------------------------------------
return_AR1 <-lm(return ~ return_1, data = nyse)

## ------------------------------------------------------------------------
return_mu <- residuals(return_AR1)
mu2_hat_model <- lm(return_mu^2 ~ return_1, data = return_AR1$model)

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE, tidy=TRUE----
stargazer(type = "html",return_AR1, mu2_hat_model,  single.row = TRUE, header = FALSE)

## ------------------------------------------------------------------------
mu2_hat  <- return_mu[-1]^2
mu2_hat_1 <- return_mu[-NROW(return_mu)]^2
arch_model <- lm(mu2_hat ~ mu2_hat_1)

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE, tidy=TRUE----
stargazer(type = "html",arch_model, single.row = TRUE, header = FALSE)

## ---- message=FALSE, eval=FALSE------------------------------------------
#  data("traffic1")
#  ?traffic1

## ------------------------------------------------------------------------
DD_model <- lm(cdthrte ~ copen + cadmn, data = traffic1)

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE, tidy=TRUE----
stargazer(type = "html",DD_model,  single.row = TRUE, header = FALSE)

## ---- tidy=TRUE, warning=FALSE, message=FALSE----------------------------
library(plm)
data("jtrain")
scrap_panel <- plm(lscrap ~ d88 + d89 + grant + grant_1, data = jtrain,
            index = c('fcode','year'), model = 'within', effect ='individual')

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE, tidy=TRUE----
stargazer(type = "html",scrap_panel,  single.row = TRUE, header = FALSE)

## ---- message=FALSE, eval=FALSE------------------------------------------
#  data("mroz")
#  ?mroz

## ------------------------------------------------------------------------
wage_educ_model <- lm(lwage ~ educ, data = mroz)

## ------------------------------------------------------------------------
fatheduc_model <- lm(educ ~ fatheduc, data = mroz, subset = (inlf==1))

## ---- message=FALSE------------------------------------------------------
library("AER")
wage_educ_IV <- ivreg(lwage ~ educ | fatheduc, data = mroz)

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE, tidy=TRUE----
stargazer(type = "html",wage_educ_model, fatheduc_model, wage_educ_IV, single.row = TRUE, header = FALSE)

## ---- message=FALSE, eval=FALSE------------------------------------------
#  data("wage2")
#  ?wage2

## ------------------------------------------------------------------------
educ_sibs_model <- lm(educ ~ sibs, data = wage2)

## ---- message=FALSE------------------------------------------------------
library("AER")
educ_sibs_IV <- ivreg(lwage ~ educ | sibs, data = wage2)

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE, tidy=TRUE----
stargazer(type = "html",educ_sibs_model, educ_sibs_IV, wage_educ_IV,  single.row = TRUE, header = FALSE)

## ---- tidy=TRUE----------------------------------------------------------
data("mroz")
wage_educ_exper_IV <- ivreg(lwage ~ educ + exper + expersq | exper + expersq + motheduc + fatheduc, data = mroz)

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE, tidy=TRUE, echo=FALSE----
stargazer(type = "html",wage_educ_exper_IV,  single.row = TRUE, header = FALSE)

## ---- message=FALSE, eval=FALSE------------------------------------------
#  data("openness")
#  ?openness

## ------------------------------------------------------------------------
open_model <-lm(open ~ lpcinc + lland, data = openness)

## ------------------------------------------------------------------------
library(AER)
inflation_IV <- ivreg(inf ~ open + lpcinc | lpcinc + lland, data = openness)

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE, tidy=TRUE----
stargazer(type = "html",open_model, inflation_IV,  single.row = TRUE, header = FALSE)

## ---- tidy=TRUE, warning=FALSE-------------------------------------------
data("crime1")

## ---- tidy=TRUE, warning=FALSE-------------------------------------------
formula <- (narr86 ~ pcnv + avgsen + tottime + ptime86 + qemp86 + inc86 + black + hispan + born60)

## ---- tidy=TRUE, warning=FALSE-------------------------------------------
econ_crime_model <- lm(formula, data = crime1)

## ---- tidy=TRUE, warning=FALSE-------------------------------------------
econ_crim_poisson <- glm(formula, data = crime1, family = poisson)

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE, tidy=TRUE----
stargazer(type = "html",econ_crime_model, econ_crim_poisson,  single.row = TRUE, header = FALSE)

## ---- message=FALSE, eval=FALSE------------------------------------------
#  data("phillips")
#  ?phillips

## ------------------------------------------------------------------------
phillips_train <- subset(phillips, year <= 1996)

unem_AR1 <- lm(unem ~ unem_1, data = phillips_train)

## ------------------------------------------------------------------------
unem_inf_VAR1 <- lm(unem ~ unem_1 + inf_1, data = phillips_train)

## ---- results='asis', echo=FALSE, warning=FALSE, message=FALSE-----------
stargazer(type = "html",unem_AR1, unem_inf_VAR1,  single.row = TRUE, header = FALSE)

## ---- warning=FALSE, message=FALSE, echo=TRUE----------------------------
phillips_test <- subset(phillips, year >= 1997)

AR1_forecast <- predict.lm(unem_AR1, newdata = phillips_test)
VAR1_forecast <- predict.lm(unem_inf_VAR1, newdata = phillips_test)

kable(cbind(phillips_test[ ,c("year", "unem")], AR1_forecast, VAR1_forecast))

