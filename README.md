# R Data Frame Subsetting Silent Failure

This repository demonstrates a common, yet subtle, error in R when subsetting data frames using character vectors containing column names that may not exist.  The problem is that if a specified column is missing, the subsetting operation silently fails rather than throwing an error, potentially leading to unexpected results and difficult-to-debug issues.

The `bug.R` file shows the problematic code, while `bugSolution.R` provides a corrected version that handles missing columns gracefully.