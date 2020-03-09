# Name of student: Ammar Saad
# EPI5143 Winter 2020 Quiz 3 Submission

# Question 1. The dataset mpg dataset is a base R dataset which includes data on fuel efficiency of a number
# of makes and models of automobile Have a look at this dataset using the View() command.
# how many observations and how many variables does this dataset have? (provide the code 
# and result from the console window)
# (hint:  use the nrow() and ncol() and/or the dim()  R functions )


### Answer 1:
#To take a look at this dataset I used the following code:
###################
view(mpg)
###################
#to figure out how many observations and how many variables does this dataset have, I used the code:
###################
dim(mpg)
###################
# The results from the console indicate that there are 234 observations and 11 variables in this dataset

# The following commands to ggplot create a basic plot of the 
# highway fuel efficiency vs.engine size (displacement in L) for vehicles in the dataset
# ie. x=displ and y=hwy, run this code and look at the plot 
# (click zoom in the plots window to make it bigger) 
##################
 ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))
##################
# Question 2. modify and run the ggplot code to make each class of vehicle a different colour

### Answer 2:
# To present each class of vehicle in a different colour, I used the following code:
##################
ggplot(data=mpg)+geom_point(mapping=aes(x=displ,y=hwy,color=factor(class)))
##################

# Question 3. further modify and run the code to use a different shape to plot vehicles
# according whether vehicle is front, rear or 4 wheel drive (drv)

### Answer 3:
# To present each vehicle driving model (front, rear, or 4 wheel), I used the following code:
##################
ggplot(data=mpg)+geom_point(mapping=aes(x=displ,y=hwy,color=factor(class),shape=factor(drv)))
##################

# Question 4. further modify and run the code to make the size of each point on the plot proportional
# to the number of cylinders the vehicle's engine has (cyl)

### Answer 4:
# To present each observation plot with a size proportional to the number of cylinders of the vehicle's engine, I used the following code:
##################
 ggplot(data=mpg)+geom_point(mapping=aes(x=displ,y=hwy,color=factor(class),shape=factor(drv),size=factor(cyl)))
##################

# Question 5. Modify the code to add a suitable title of your choice to your plot

## Answer 5:
# I gave the final plot a title called "Plotting Vehicle Efficiency" using the following code:
##################
ggplot(data=mpg)+geom_point(mapping=aes(x=displ,y=hwy,color=factor(class),shape=factor(drv),size=factor(cyl)))+ggtitle("Plotting Vehicle Efficiency")
##################

##Extra work:
# I saved this plot under the name "Finalplot" for easier usage in the future, using the following code
##################
finalplot<-ggplot(data=mpg)+geom_point(mapping=aes(x=displ,y=hwy,color=factor(class),shape=factor(drv),size=factor(cyl)))+ggtitle("Plotting Vehicle Efficiency")
##################

# End of quiz

