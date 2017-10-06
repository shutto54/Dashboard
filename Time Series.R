query<-"SELECT Salaries, yearID FROM Batting WHERE Salaries=avg(Salaries)"
result<-sqldf(query)

ggplot()+
  geom_point(data=result,aes(x=yearID,y=avg(Salaries)))+
               geom_line(data=result,aes(x=yearID,y=avg(Salaries)))