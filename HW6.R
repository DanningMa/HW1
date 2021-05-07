#Q1
matrix1 <- matrix(c(7,2,9,4,12,13),nrow=2,ncol=3)
matrix2 <- matrix(c(1,2,3,7,8,9,12,13,14,19,20,21),nrow=3,ncol=4)
matrix1
matrix2
#resulting matrix
matrix1%*%matrix2


#Q2
#a.Create a data frame
Data_Frame<-data.frame(
  id = c(1,2,3,4,5),
  name = c("Peter","Amy","Ryan","Gary","Michelle"),
  salary = c(623.30,515.20,611.00,729.00,843.25)
)
Data_Frame

#b.add a column of “department”
New_col_DF <- cbind(Data_Frame, department = c("IT","finance","computer science","statistics","Art"))
New_col_DF

#c.Extract 1st, 3rd, and 5th rows, with 2nd and 3rd columns, using c function. 
New_col_DF[c(1,3,5),c(2,3)]

#d.bar chart
barplot(New_col_DF[c(1,4,5),3],names.arg=New_col_DF[c(1,4,5),2])

#e.pie chart
x <- c(max(New_col_DF[,3]),min(New_col_DF[,3]),median(New_col_DF[,3]) )
median(New_col_DF[,3])
# if plot label is name
y<- c(New_col_DF[which.max(New_col_DF[,3]),2],New_col_DF[which.min(New_col_DF[,3]),2],New_col_DF[1,2])
# if plot label is "highest, lowest, median"
y<-c("highest salary","lowest salary","median salary")
colors<-c("white","pink","yellow")
pie(x, label =y,main ="pie chart of salary", col=colors )
legend("bottomleft", y,fill = colors)


#Q3
# First function: scorekeeper function in Python
# def scorekeeper(ai_win,player_win,result):
#    if (result == True):
#        player_win +=1
#        return ai_win,player_win
#    if (result == False):
#        ai_win +=1
#        return ai_win,player_win
#    else:
#        return ai_win,player_win
my_function <-function(ai_win,player_win,result){
  if (result == TRUE){
    player_win = player_win +1
    return(c("ai is",ai_win,"player is",player_win))
  }else if (result == FALSE){
    ai_win = ai_win +1
    return(c("ai is",ai_win,"player is",player_win))
  }else{
    return(c("ai is",ai_win,"player is",player_win))
  }
}
ai_win <-2
player_win <-3
result <- TRUE
my_function(ai_win,player_win,result)


# second function in python
# replay = input("play again? (yes/no)")
# while (replay != "yes" and replay != "no"):
#   print("the input is not valid, it should be one of 'yes' or 'no', please retype")
#   replay = input("play again? (yes/no)")

my_function2 <-function(replay){
  while(replay != "yes" & replay != "no"){
    print("the input is not valid, it should be one of 'yes' or 'no', please retype")
    replay<- readline(prompt="play again? (yes/no): ")
  }
}
replay <- readline(prompt="play again? (yes/no): ")
my_function2(replay)
print("finish")
