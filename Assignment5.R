#Jesse Alsing
#6/19/2018



data <- read.csv("review.csv")
	
string_split = strsplit(as.character(data$reviewText),  "\\s+")
	
x <- 1

while(x <= nrow(data))
{

	if(length(string_split[[x]]) < 100 )
	{
	#the weirdest thing happens here. I can get the correct string length here but If i try to un-concatenate the appropriate x-value it just doesnt work
	#i am very confused and spent awhile trying to figure it out to no avail.
		data <- data[-c(x), ]
		#print(x)
		#print(length(string_split[[x]]))
		
	}

x <- x + 1	

}	
newData <- data[order(data$overall),] 
write.csv(newData,"output.csv")
	

