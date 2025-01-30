```r
# This code attempts to subset a data frame using a character vector of column names,
# but it fails silently if any of the specified columns are missing.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)

cols_to_select <- c("A", "B", "D") # 'D' is missing

subset_df <- df[, cols_to_select, drop = FALSE]  #drop = FALSE is crucial to avoid dropping the dimension

print(subset_df)
```