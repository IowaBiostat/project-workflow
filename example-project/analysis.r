# May
May <- import('may')
fit <- lm(logOzone ~ Wind + Heat + Radiation, May)
visreg(fit, 'Wind', trans=exp, ylab='Ozone', partial=TRUE, bty='n')

# June
June <- import('june')
fit <- lm(logOzone ~ Wind + Heat + Radiation, June)
visreg(fit, 'Wind', trans=exp, ylab='Ozone', partial=TRUE, bty='n')

# July
July <- import('july')
fit <- lm(logOzone ~ Wind + Heat + Radiation, July)
visreg(fit, 'Wind', trans=exp, ylab='Ozone', partial=TRUE, bty='n')
