jobs <- read.csv("data/jobs_cleaned.csv")

# I will select a job from the dataset

job <- jobs[24, ]

# Different R data types

job_title <- as.character(job$job_title)             # character
number_of_jobs <- nrow(jobs)                         # numeric
is_remote <- job$work_setting == "Remote"            # logical
job_id <- as.integer(24)                             # integer
salary_range <- c(job$salary, job$annual_salary_usd) # vector

job_info <- list(                                    # list
  title = job$job_title,
  salary = job$annual_salary_usd,
  remote = is_remote)

# Display output

print(job_title)
print(number_of_jobs)
print(is_remote)
print(job_id)
print(salary_range)
print(job_info)

# A loop working with a list

skills <- list("Python", "SQL", "R", "Excel")

for (skill in skills) {
  print(paste("Required skill:", skill))}