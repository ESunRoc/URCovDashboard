data.sat <- data[seq(1, nrow(data), 7), 1:3]
data.sat$daily.prate <- ifelse(data.sat$Tests<data.sat$Positive, 1, ifelse(data.sat$Tests==0, 0, data.sat$Positive/data.sat$Tests))
data.sat$totcases <- cumsum(data.sat$Positive)
data.sat$tottests <- cumsum(data.sat$Tests)
data.sat$daynum <- seq(1, length(data.sat$Date))


data.sun <- data[seq(2, nrow(data), 7), 1:3]
data.sun$daily.prate <- ifelse(data.sun$Tests<data.sun$Positive, 1, ifelse(data.sun$Tests==0, 0, data.sun$Positive/data.sun$Tests))
data.sun$totcases <- cumsum(data.sun$Positive)
data.sun$tottests <- cumsum(data.sun$Tests)
data.sun$daynum <- seq(1, length(data.sun$Date))

data.mon <- data[seq(3, nrow(data), 7), 1:3]
# data.mon[nrow(data.mon) + 1,] <- list(Date=as.Date("2021-03-08"), Tests=0, volume=0)
data.mon$daily.prate <- ifelse(data.mon$Tests<data.mon$Positive, 1, ifelse(data.mon$Tests==0, 0, data.mon$Positive/data.mon$Tests))
data.mon$totcases <- cumsum(data.mon$Positive)
data.mon$tottests <- cumsum(data.mon$Tests)
data.mon$daynum <- seq(1, length(data.mon$Date))

data.tue <- data[seq(4, nrow(data), 7), 1:3]
# data.tue[nrow(data.tue) + 1,] <- list(Date=as.Date("2021-03-09"), Tests=0, volume=0)
data.tue$daily.prate <- ifelse(data.tue$Tests<data.tue$Positive, 1, ifelse(data.tue$Tests==0, 0, data.tue$Positive/data.tue$Tests))
data.tue$totcases <- cumsum(data.tue$Positive)
data.tue$tottests <- cumsum(data.tue$Tests)
data.tue$daynum <- seq(1, length(data.tue$Date))

data.wed <- data[seq(5, nrow(data), 7), 1:3]
# data.wed[nrow(data.wed) + 1,] <- list(Date=as.Date("2021-03-10"), Tests=0, volume=0)
data.wed$daily.prate <- ifelse(data.wed$Tests<data.wed$Positive, 1, ifelse(data.wed$Tests==0, 0, data.wed$Positive/data.wed$Tests))
data.wed$totcases <- cumsum(data.wed$Positive)
data.wed$tottests <- cumsum(data.wed$Tests)
data.wed$daynum <- seq(1, length(data.wed$Date))

data.thu <- data[seq(6, nrow(data), 7), 1:3]
# data.thu[nrow(data.thu) + 1,] <- list(Date=as.Date("2021-03-11"), Tests=0, volume=0)
data.thu$daily.prate <- ifelse(data.thu$Tests<data.thu$Positive, 1, ifelse(data.thu$Tests==0, 0, data.thu$Positive/data.thu$Tests))
data.thu$totcases <- cumsum(data.thu$Positive)
data.thu$tottests <- cumsum(data.thu$Tests)
data.thu$daynum <- seq(1, length(data.thu$Date))

data.fri <- data[seq(7, nrow(data), 7), 1:3]
# data.fri[nrow(data.fri) + 1,] <- list(Date=as.Date("2021-03-12"), Tests=0, volume=0)
data.fri$daily.prate <- ifelse(data.fri$Tests<data.fri$Positive, 1, ifelse(data.fri$Tests==0, 0, data.fri$Positive/data.fri$Tests))
data.fri$totcases <- cumsum(data.fri$Positive)
data.fri$tottests <- cumsum(data.fri$Tests)
data.fri$daynum <- seq(1, length(data.fri$Date))

# tests_by_day <- data.frame("Sunday" = data.sun$tottests, "Monday" = data.mon$tottests, "Tuesday" = data.tue$tottests, 
#                            "Wednesday" = data.wed$tottests, "Thursday" = data.thu$tottests, "Friday" = data.fri$tottests,
#                            "Saturday" = data.sat$tottests)

means <- matrix(
  c(mean(data.sat$Tests), mean(data.sun$Tests), mean(data.mon$Tests), mean(data.tue$Tests),
    mean(data.wed$Tests), mean(data.thu$Tests), mean(data.fri$Tests)), ncol=7
)

rownames = c("Tests")
colnames = c("Saturday", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

means <- as.table(means)
barplot(means)
