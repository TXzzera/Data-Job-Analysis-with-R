jobs <- read.csv("data/jobs_cleaned.csv")

# Display the dataframe structure
print("Dataset structure:")
str(jobs)

# "Those are the same questions from the previous module, but in R"
# -----------------------------------------------------
# Question 1:
# Which job categories have the highest number of job
# opportunities?
# -----------------------------------------------------

job_category_counts <- as.data.frame(
  table(jobs$job_category))

# Rename columns
colnames(job_category_counts) <- c(
  "Job Category",
  "Number of Jobs")

# Sort from highest to lowest
job_category_counts <- job_category_counts[
  order(-job_category_counts$`Number of Jobs`),]

# Display results
print("Job opportunities by category:")
print(job_category_counts)


# -----------------------------------------------------
# Question 2:
# How does the average salary vary by experience level?
# -----------------------------------------------------

average_salary <- aggregate(
  annual_salary_usd ~ experience_level,
  data = jobs,
  FUN = mean,
  na.rm = TRUE)

# Round the average salary
average_salary$annual_salary_usd <- round(
  average_salary$annual_salary_usd,
  2)

# Sort from highest to lowest salary
average_salary <- average_salary[
  order(-average_salary$annual_salary_usd),]

# Display results
print("Average salary by experience level:")
print(average_salary)