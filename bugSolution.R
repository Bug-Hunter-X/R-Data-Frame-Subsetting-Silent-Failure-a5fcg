```r
# Improved code to handle missing columns during data frame subsetting.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)

cols_to_select <- c("A", "B", "D")

# Check if all columns exist before subsetting
missing_cols <- setdiff(cols_to_select, names(df))
if (length(missing_cols) > 0) {
  warning(paste("Columns not found:", paste(missing_cols, collapse = ", ")))
  #Handle missing columns, for instance, add them with NA values or throw an error
  #Here we will add them with NA values
  for (col in missing_cols) {
    df[[col]] <- NA
  }
}

subset_df <- df[, cols_to_select, drop = FALSE]

print(subset_df)
```