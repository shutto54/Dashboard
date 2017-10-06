query<-"SELECT salary FROM Salaries"

result<-sqldf(query)

ggplot()+
  geom_histogram(data=result,aes(x=salary))