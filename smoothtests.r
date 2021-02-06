rollcases <- ggplot(data, aes(x = Date, y = rollcases)) +
  geom_line() + 
  labs(x = "Date", y = "Cases", title = "7 day rolling Cases per Day",
       subtitle = "Aligned right")
rcases <- ggplotly(rollpositives)
rcases

GAM.rcases <- ggplot(data, aes(x = Date, y = rollcases)) +
  geom_smooth(method = "gam", size = 1) + 
  labs(x = "Date", y = "Cases", title = "7 day rolling Cases per Day",
       subtitle = "Aligned right")
GAM.rases <- ggplotly(GAM.rcases)
GAM.rases

GLM.rcases <- ggplot(data, aes(x = Date, y = rollcases)) +
  geom_smooth(method = "glm", size=1) +
  labs(x = "Date", y="Cases", title = "7 day rolling cases per day",
       subtitle = "Aligned right")
GLM.rcases <- ggplotly(GLM.rcases)
glm_model <- glm(rollcases ~ Date, data=data)
summary(glm_model)

LOESS_rcases <- ggplot(data, aes(x = Date, y = rollcases)) +
  geom_smooth(method = "loess", size=1) +
  labs(x = "Date", y="Cases", title = "7 day rolling cases per day",
       subtitle = "Aligned right")
LOESS_rcases <- ggplotly(LOESS_rcases)
