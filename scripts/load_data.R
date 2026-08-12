# Loading the dataset of the previous module using pandas
jobs <- read.csv("data/jobs_cleaned.csv")

# Display the first rows
print(head(jobs))

# Display the structure of the dataset
str(jobs)

# Display summary statistics
summary(jobs)