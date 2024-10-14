# Quiz 1

## 1
**Find the mean WEIGHT of SMBUFFALO fish to 4 decimal places.**
```r
ddt_data <- read.csv("DDT.csv")

# Filter the data for SMBUFFALO species
smbuffalo_data <- subset(ddt_data, SPECIES == "SMBUFFALO")

# Calculate the mean weight of SMBUFFALO species
mean_weight_smbuffalo <- mean(smbuffalo_data$WEIGHT)

# Print the result rounded to 4 decimal places
mean_weight_smbuffalo_rounded <- round(mean_weight_smbuffalo, 4)
print(mean_weight_smbuffalo_rounded)
```

## 2
**Find the mean LENGTH of CCATFISH which have DDT > 33 to 2 decimal places.**
```r
# Load the DDT dataset
ddt_data <- read.csv("DDT.csv")

# Filter the data for CCATFISH species with DDT greater than 33
ccatfish_data <- subset(ddt_data, SPECIES == "CCATFISH" & DDT > 33)

# Calculate the mean length of CCATFISH species
mean_length_ccatfish <- mean(ccatfish_data$LENGTH)

# Print the result rounded to 2 decimal places
mean_length_ccatfish_rounded <- round(mean_length_ccatfish, 2)
print(mean_length_ccatfish_rounded)
```

## 3
**Find the standard deviation of DDT for fish that are either  LMBASS  or SMBUFFALO to 4 decimal places.**
```r
# Load the DDT dataset
ddt_data <- read.csv("DDT.csv")

# Filter the data for fish that are either LMBASS or SMBUFFALO
filtered_data <- subset(ddt_data, SPECIES == "LMBASS" | SPECIES == "SMBUFFALO")

# Calculate the standard deviation of DDT for these species
std_dev_ddt <- sd(filtered_data$DDT)

# Print the result rounded to 4 decimal places
std_dev_ddt_rounded <- round(std_dev_ddt, 4)
print(std_dev_ddt_rounded)
```

## 4
**Find the number of fish that have a LENGTH > 40  and WEIGHT > 1000.**
```r
# Load the DDT dataset
ddt_data <- read.csv("DDT.csv")

# Filter the data for fish that are either LMBASS or SMBUFFALO
filtered_data <- subset(ddt_data, SPECIES == "LMBASS" | SPECIES == "SMBUFFALO")

# Calculate the standard deviation of DDT for these species
std_dev_ddt <- sd(filtered_data$DDT)

# Print the result rounded to 4 decimal places
std_dev_ddt_rounded <- round(std_dev_ddt, 4)
print(std_dev_ddt_rounded)
```

