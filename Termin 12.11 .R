> library(palmerpenguins)
> fit<-glm(body_mass_g ~ species + sex, data= penguins) 
> summary(fit)

Call:
  glm(formula = body_mass_g ~ species + sex, data = penguins)

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)       3372.39      31.43 107.308   <2e-16 ***
  speciesChinstrap    26.92      46.48   0.579    0.563    
speciesGentoo     1377.86      39.10  35.236   <2e-16 ***
  sexmale            667.56      34.70  19.236   <2e-16 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

(Dispersion parameter for gaussian family taken to be 100240.7)

Null deviance: 215259666  on 332  degrees of freedom
Residual deviance:  32979185  on 329  degrees of freedom
(11 observations deleted due to missingness)
AIC: 4785.6

Number of Fisher Scoring iterations: 2

> fit2 <- glm (sex ~species +body_mass_g, familiy = binomial, data =pengiuns)
Error in eval(mf, parent.frame()) : object 'pengiuns' not found
> fit2 <- glm (sex ~species + body_mass_g, familiy = binomial, data =pengiuns)
Error in eval(mf, parent.frame()) : object 'pengiuns' not found
> fit2 <- glm (sex ~species + body_mass_g, family = binomial, data =pengiuns)
Error in eval(mf, parent.frame()) : object 'pengiuns' not found
> fit2 <- glm (sex ~species + body_mass_g, family = binomial, data =penguins)
> bill_ratio <- penguins$bill_depth_mm/(penguins$bill_length_mm+penguins$bill_depth_mm)
> fit3 <- gml(bill_ratio~sex+species, data= penguins, family=quasibinomial)
Error in gml(bill_ratio ~ sex + species, data = penguins, family = quasibinomial) : 
  could not find function "gml"
> fit3 <- glm(bill_ratio~sex+species, data= penguins, family=quasibinomial)
> setwd("~/Downloads/ARM_Data/earnings")
> earns <- read.dta ("heights.dta")
> names(earns)
[1] "earn"    "height1" "height2" "sex"     "race"    "hisp"    "ed"      "yearbn"  "height" 
> fit4 <- lm(earn ~height, data= earns)
> summary (fit4)

Call:
  lm(formula = earn ~ height, data = earns)

Residuals:
  Min     1Q Median     3Q    Max 
-30031 -12497  -3215   7474 174659 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept) -84078.3     8901.1  -9.446   <2e-16 ***
  height        1563.1      133.4  11.713   <2e-16 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 18850 on 1377 degrees of freedom
(650 observations deleted due to missingness)
Multiple R-squared:  0.09061,	Adjusted R-squared:  0.08995 
F-statistic: 137.2 on 1 and 1377 DF,  p-value: < 2.2e-16

> fit5 <- lm(earn ~height +sex, data=earns)
> summary (fit5)

Call:
  lm(formula = earn ~ height + sex, data = earns)

Residuals:
  Min     1Q Median     3Q    Max 
-30553 -12448  -3243   7451 171098 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)   1617.9    14059.5   0.115  0.90840    
height         550.5      184.6   2.983  0.00291 ** 
  sex         -11254.6     1448.9  -7.768 1.55e-14 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 18460 on 1376 degrees of freedom
(650 observations deleted due to missingness)
Multiple R-squared:  0.1288,	Adjusted R-squared:  0.1275 
F-statistic: 101.7 on 2 and 1376 DF,  p-value: < 2.2e-16