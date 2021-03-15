data$dayweek <- weekdays(data$Date)
sun_tests <- c(data$Tests[data$dayweek=="Sunday"])
mon_tests <- c(data$Tests[data$dayweek=="Monday"])
tue_tests <- c(data$Tests[data$dayweek=="Tuesday"])
wed_tests <- c(data$Tests[data$dayweek=="Wednesday"])
thu_tests <- c(data$Tests[data$dayweek=="Thursday"])
fri_tests <- c(data$Tests[data$dayweek=="Friday"])
sat_tests <- c(data$Tests[data$dayweek=="Saturday"])

averages <- c(mean(sun_tests), mean(mon_tests), mean(tue_tests), mean(wed_tests),
              mean(thu_tests), mean(fri_tests), mean(sat_tests))
avgs <- as.table(averages)
barplot(avgs)

totals <- c(sum(sun_tests), sum(mon_tests), sum(tue_tests), sum(wed_tests),
           sum(thu_tests), sum(fri_tests), sum(sat_tests))
testtots <- as.table(totals)
barplot(totals)



totaov <- aov(data$Tests~data$dayweek)
summary(totaov)


