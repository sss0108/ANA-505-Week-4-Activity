#Week 4: dplyr package

#Task: Write the function to get a dataset from Base R: Titanic
#and give the dataframe a new name of your choice
#(hint: you will want your data to be a dataframe. Use the function: as.data.frame(Titanic))
data("Titanic")
titanic_df <- as.data.frame(Titanic)


#See the top rows of the data
#TASK: Write the function to see the top rows of the data
head(titanic_df)


#Install and call the package dplyr
#TASK: Write the functions to install and call dplyr
install.packages("dplyr")
library(dplyr)

#Let's just see the Survived and Sex columns
#Task: Write the function to 'select' the Survived and Sex columns 
#(hint: use the 'select' function)
selected_data <- select(titanic_df, Survived, Sex)

#Let's name the dataset with just the two columns, Survived and Sex
#TASK: Write the function to save the two columns as one new dataset
#and give it a name
titanic_df_new <- selected_data



#Let's get rid of the Sex column in the new dataset created above
#TASK: Write the function that deselects the sex column
#(hint: use the 'select' function to not select a -column)
titanic_df_without_sex = select(titanic_df_new, -Sex)



#Let's rename a column name
#TASK: Write the function that renames 'Sex' to 'Gender'
titanic_df_renamed <- rename(titanic_df_new, Gender = Sex)


#Let's make a new dataframe with the new column name
#TASK: Write the function that names a new dataset that includes the 'gender' column
titanic_df_new_2 <- titanic_df_renamed


#Let's 'filter' just the males from our dataset
#TASK: Write the function that includes only rows that are 'male'
males_dataset <- filter(titanic_df_new_2, Gender == "Male")


#Let's 'arrange' our data by gender (not the data you just filtered)
#TASK: Write the function to group the data by gender (hint: arrange())
arranged_by_gender <- arrange(titanic_df_new_2, Gender)


#Let's see how many people were examined in the dataset (total the frequency in the original dataframe)
#TASK: Sum the Freq column
total_frequency <- sum(titanic_df$Freq)
total_frequency
#TASK: After you run it, write the total here:_2201___

#Since we have a males dataset, let's make a females dataset
#TASK: Write the function that includes only rows that are 'female'
females_dataset <- filter(titanic_df_new_2, Gender == "Female")

#And now let's join the males and females
#TASK: Write the function that joins the male and female rows 
#(hint: try using 'union' or 'bind_rows')
combined_dataset <- bind_rows(males_dataset, females_dataset)


#Optional Task: add any of the other functions 
#you learned about from the dplyr package

