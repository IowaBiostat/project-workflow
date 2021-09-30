if (basename(getwd()) == 'tinytest') setwd('../..') else library(tinytest)

# Test import()
May <- import('may')
expect_true(is.data.table(May))
expect_equal(log(May$Ozone), May$logOzone)
expect_error(import('blahblahblah'))

# Test month_merge()
DT <- month_merge('may', 'june')
expect_equal(unique(DT$Month), c('May', 'June'))
