cumlcases <- ggplot(data, aes(x = Date, y = totcases)) +
  geom_line() +
  scale_y_continuous(breaks=seq(0, max(data$totcases)+5 ,5)) +  
  labs(x = "Date", y = "Total Cases (to date)", title = "Cumulative cases as a function of time")
cc <- ggplotly(cumlcases)


GAM.cumlcases <- ggplot(data, aes(x = Date, y = totcases)) +
  geom_smooth(method = "gam", size = 1) +
  scale_y_continuous(breaks=seq(0, max(data$totcases)+5 ,5)) + 
  labs(x = "Date", y = "Total Cases (to date)", title = "Cumulative cases as a function of time")
GAM.cc <- ggplotly(GAM.cumlcases)


cumltests <- ggplot(data, aes(x = Date, y = tottests)) +
  geom_line() +
  labs(x = "Date", y = "Number of Tests", title = "Cumulative Testing as a function of time")
ct <- ggplotly(cumltests)


GAM.cumltests <- ggplot(data, aes(x = Date, y = tottests)) +
  geom_smooth(method = "gam", size = 1) +
  labs(x = "Date", y="Number of Tests", title = "Cumulative Testing as a function of time")
GAM.ct <- ggplotly(GAM.cumltests)

dailyposrate <- ggplot(data, aes(x = Date, y = daily.prate)) +
  geom_line() + 
  labs(x = "Date", y = "Positivity Rate", title = "Daily positivity rate",
       subtitle = "Aligned right")
dpr <- ggplotly(dailyposrate)


GAM.dailyposrate <- ggplot(data, aes(x = Date, y = daily.prate)) +
  geom_smooth(method = "gam", size = 1) + 
  labs(x = "Date", y = "Positivity Rate", title = "Daily positivity rate",
       subtitle = "Aligned right")
GAM.dpr <- ggplotly(GAM.dailyposrate)

rollposrate <- ggplot(data, aes(x = Date, y = rolldaily.prate)) +
  geom_line() + 
  labs(x = "Date", y = "Positivity Rate", title = "7 day rolling positivity rate",
       subtitle = "Aligned right")
rpr <- ggplotly(rollposrate)


GAM.rollposrate <- ggplot(data, aes(x = Date, y = rolldaily.prate)) +
  geom_smooth(method = "gam", size = 1) + 
  labs(x = "Date", y = "Positivity Rate", title = "7 day rolling positivity rate",
       subtitle = "Aligned right")
GAM.rpr <- ggplotly(GAM.rollposrate)


rolltestsgraph <- ggplot(data, aes(x=Date, y=rolltests)) + 
  geom_line()+
  labs(x="Date", y="Tests Conducted", title = "7 day rolling tests per day",
       subtitle = "Aligned Right")
rtg <- ggplotly(rolltestsgraph)


GAM.rolltestsgraph <- ggplot(data, aes(x=Date, y=rolltests)) + 
  geom_smooth(method = "gam", size = 1) +
  labs(x="Date", y="Tests Conducted", title = "7 day rolling tests per day",
       subtitle = "Aligned Right")
GAM.rtg <- ggplotly(GAM.rolltestsgraph)


casesperday <- ggplot(data, aes(x=Date, y=Positive)) + 
  geom_line()+
  labs(x = "Date", y = "Cases", title = "New cases per day")
cpd <- ggplotly(casesperday)


GAM.casesperday <- ggplot(data, aes(x=Date, y=Positive)) + 
  geom_smooth()+
  labs(x = "Date", y = "Cases", title = "New cases per day")
GAM.cpd <- ggplotly(GAM.casesperday)


testsperday <- ggplot(data, aes(x=Date, y=Tests)) + 
  geom_line()+
  labs(x = "Date", y = "Tests", title = "Tests per day")
tpd <- ggplotly(testsperday)


GAM.testsperday <- ggplot(data, aes(x=Date, y=Tests)) + 
  geom_smooth(method = "gam", size=1)+
  labs(x = "Date", y = "Tests", title = "Tests per day")
GAM.tpd <- ggplotly(GAM.testsperday)


oneweek.avgtests <- ggplot(oneweekavg, aes(x=Group.1, y=Tests, group=1)) +
  geom_line() + 
  labs(x="Weeks since August 1", title="Average Tests per Day Over 7 day Period", 
       subtitle = "Temporal mean, t=7")
owat <- ggplotly(oneweek.avgtests)


twoweeks.avgtests <- ggplot(twoweeksavg, aes(x=Group.1, y=Tests, group=1)) +
  geom_line() + 
  labs(x="Fortnights since August 1", title="Average Tests per Day Over 14 day Period", 
       subtitle = "Temporal mean, t=14")
twsat <- ggplotly(twoweeks.avgtests)


oneweek.sumtests <- ggplot(oneweeksum, aes(x=Group.1, y=Tests, group=1)) +
  geom_line() + 
  labs(x="Weeks since August 1", title="Cumulative Tests per 7 day Period")
owst <- ggplotly(oneweek.sumtests)


twoweeks.sumtests <- ggplot(twoweekssum, aes(x=Group.1, y=Tests, group=1)) +
  geom_line() + 
  labs(x="Fortnights since August 1", title="Cumulative Tests per 14 day Period")
twst <- ggplotly(twoweeks.sumtests)