########################################################## 
# include Libraries we want
include shared-gdrive("Bootstrap-DataScience-v1.5.arr", "1btFfKCcas4zkQ6-SYCYMkcDCqmduzQqB")
# include Google Sheets and Tables library
include gdrive-sheets
include tables
include image


#########################################################
# Load your spreadsheet and define your table
occupation-sheet = load-spreadsheet("1fAzyoVgtSMl9ja-JMpou_Y5RRyoTOPh2umR_mkJYQyU")

occupation-table = load-table: occupation, occupation-type, tot-employment, percent-non-white, percent-female, educ-req, annual-median-wage, weekly-median-wage, female-weekly-median-wage
  source: occupation-sheet.sheet-by-name("US Jobs 2019", true)
end


######################################################### 

# Part 1: The method <table>.row-n(index) consumes the index of the row and produces the information about that row. Look at the dataset "US Jobs 2019." Choose 3 occupations and define them below.

# Example
comp-programmers = occupation-table.row-n(28)

# Occupation #1:


# Occupation #2:


# Occupation #3:



######################################################### 

# Part 2: The method <table>.order-by("column", Boolean) consumes a column and a Boolean and produces a table sorted in ascending or descending order according to the Boolean. Define the table and sort the dataset according to the given column and conditions.

# Example: Define a table called "employed". Sort the table by total employed from greatest to least.

employed = occupation-table.order-by("tot-employment", false)

# Define a table called "med-wage". Sort the table by annual median wage from greatest to least.



###########################################################

# Part 3: Below is a list of functions. These functions will be used in Part 4.


fun is-high-med-wage(row): row["annual-median-wage"] >= 70000 end

fun is-higher-female-wage(row): row["female-weekly-median-wage"] >= row["weekly-median-wage"] end


# Define a function called "need-bachelors" that consumes a row and checks if the occupation in the row requires a Bachelor's degree.




###########################################################

# Part 4: The method <table>.filter(function) consumes a function and produces a table that only shows rows where the function is true. Define the table and filter the dataset by the appropriate functions from Part 3.


# a. Define a table called "high-wage" that only shows occupations that have an annual median wage greater than $70000.



# b. Define a table called "higher-female" that only shows occupations that have a higher weekly median wage for women than the weekly median wage.



# How many rows are in the "higher-female" table? What does this tell us about women's wages in the US?




###########################################################

# Part 5: Samples of datasets can be used to make inferences about the whole dataset. The function "random-rows" takes in a table and a number of rows and creates a sample of random rows from the table.

# Define a table called "tiny-sample" that contains 10 random rows.



###########################################################

# Part 6: Create at least two different data displays, i.e. pie chart, bar chart, scatterplot, or histogram, using appropriate data for the type of chart. Write the code below.






##########################################################

# Extension: Demonstrate anything else we've done in this class. For example, you can define a function that calculates the number of non-white employees or combine methods to filter and sort a table.