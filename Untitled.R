# Load the original swiss dataset
data(swiss)

# Create a copy called swiss1
swiss1 <- swiss

# Add a new column "REG" for stratification (randomly assigning regions)
set.seed(123)  # For reproducibility
swiss1$REG <- sample(c("Region A", "Region B", "Region C"), size = nrow(swiss1), replace = TRUE)

# View the first few rows of swiss1 to confirm
head(swiss1)

