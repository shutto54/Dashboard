query<-"SELECT Salaries,HR AS career_HR FROM Batting GROUP BY
playerID HAVING HR>=10"

result<-sqldf(query)

ggplot()+
  geom_point(data=result,aes(x=Salaries,y=career_HR))