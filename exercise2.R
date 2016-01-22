### Exercise 2 ###

# Load R's "USPersonalExpenditure" dataest using the "data()" function
data("USPersonalExpenditure")
View(expenditure)

# The variable USPersonalExpenditure is now accessible to you.  Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame(expenditure)


# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme

# Create a new variable by passing the USPersonalExpenditure to the data.frame function
us_exp <- data.frame(USPersonalExpenditure)
View(us_exp)

# What are the column names of your dataframe?
name_of_columns <- colnames(us_exp)

# Why are they so strange?
# Not sure

# What are the row names of your dataframe?
name_of_rows <- rownames(us_exp)

# Create a column "category" that is equal to your rownames
us_exp$category <- name_of_rows

# Store all "Medical and Health" expenditures in a variable
medical_health <- us_exp['Medical and Health',]

# Store only your 1955 data in a varialbe -- what type of variable does it become?
spending_1955 <- us_exp['X1955']

# Oh no!  It's a vector!  repeat the same selection above, but:
# include "drop=FALSE" in your square brackets to keep the rownames


# How much money was spent on personal care in 1940?
spending_1940_personal <- us_exp['Personal Care', 'X1940']

# How much money was spent on Food and Tobacco in 1960


# What was the highest expenditure category in 1960?
highest_1960 <- us_exp$category[us_exp$X1960 == max(us_exp$X1960)]


# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year
detect_highest <- function(year) {
   return(us_exp$category[us_exp[year] == max(us_exp[year])])
}

# Using your function, determine the highest spending category of each year


### Bonus ###
# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
highest <- list()
for(year in seq(1940, 1960, 5)) {
  year_index <- paste0('X', year)
  highest[year_index] <- detect_highest(year_index)
}

