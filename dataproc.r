data <- read_xlsx("covdata.xlsx")
data$daily.prate <- ifelse(data$Tests<data$Positive, 1, ifelse(data$Tests==0, 0, data$Positive/data$Tests))
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
twoweeksavg <- as.data.frame(n.colfunc(data[2:4], 14, mean))
oneweekavg <- as.data.frame(n.colfunc(data[2:4], 7, mean))
twoweekssum <- as.data.frame(n.colfunc(data[2:4], 14, sum))
oneweeksum <- as.data.frame(n.colfunc(data[2:4], 7, sum))