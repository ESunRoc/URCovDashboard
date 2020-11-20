data <- read_xls("URCov.xls")

data$daily.prate <- ifelse(data$Tests == 0, 0, data$Positive/data$Tests)
data$totcases <- cumsum(data$Positive)
data$tottests <- cumsum(data$Tests)

data$rolltests <- rollmean(data$Tests, k=7, fill=F, align="right")
data$rollpos <- rollmean(data$Positive, k=7, fill=F, align="right")
data$rolldaily.prate <- rollmean(data$daily.prate, k=7, fill=NA, align="right")

n.colfunc <- function(df, n=7, func){
  aggregate(x = df,
            by = list(gl(ceiling(nrow(df)/n), n)[1:nrow(df)]),
            FUN = func)
}

twoweeksavg <- n.colfunc(data[2:4], 14, mean)
oneweekavg <- n.colfunc(data[2:4], 7, mean)

twoweekssum <- n.colfunc(data[2:4], 14, sum)
oneweeksum <- n.colfunc(data[2:4], 7, sum)