### Exercise 1 ###

# Create a vector of everything you ate for breakfast
breakfast <- c('Oatmeal','water','cherry flavoured greek yoghurt')

# Create a vector of everything you ate for lunch
lunch <- ('Pizza')

# Create a list "meals" that has contains your breakfast and lunch
meals <- list(breakfast, lunch)

# Add a "dinner" index to your "meals" list that has what you plan to eat for dinner
meals$dinner <- c('pulled pork', 'sliders', 'ginger ale')

# Extract your 'dinner' element from your list and save it in a vector called 'dinner'
dinner <- meals[['dinner']]

### Bonus ### 
# Create a list that has the number of items you ate for each meal
items <- lapply(meals, length)

# Write a function that adds pizza to every meal
add_pizza <- function(x) {
  x <- c(x, 'pizza')
}

# Add pizza to every meal!
added_pizza <- lapply(meals, add_pizza)
  