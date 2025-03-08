# Validate

The `Validate` R-Package provides a set of validators to check the validity of input data structures. The validators are designed to be used in a pipeline to check the validity of input data structures and throw an error if the data structure is invalid.

## Installation

At the time of writing this README, this `Validate` R-Package is not available on CRAN. Use `devtools` to either install from GitHub or Build and Install locally:

### Install via GitHub

1. Use Devtools

```r
devtools::install_github("https://github.com/scalable-software/Validate")
```

### Build and Install Locally

1. Generate `.tar.gz` file

```r
devtools::build()
```

2. Install `.tar.gz` file

```r
install.packages("path_to_file/tar_gz_file", repos = NULL, type="source")
```

## Validators

The following types with validators are available:

### Null Checks

- `is.not.NULL` - Check if the input is not NULL

### Type Checks

- `is.data.frame` - Check if the input is a data frame
- `is.vector` - Check if the input is a vector
- `is.character` - Check if the input is a character type vector
- `is.numeric` - Check if the input is a numeric type vector
- `is.integer` - Check if the input is an integer type vector
- `is.double` - Check if the input is a double type vector
- `is.logical` - Check if the input is a logical type vector
- `is.complex` - Check if the input is a complex type vector
- `is.raw` - Check if the input is a raw type vector
- `is.factor` - Check if the input is a factor type vector
- `is.matrix` - Check if the input is a matrix
- `is.array` - Check if the input is an array
- `is.list` - Check if the input is a list

### Length Checks

- `is.empty` - Check if the input is empty
- `is.not.empty` - Check if the input is not empty
- `has.one.row` - Check if the input has one row
- `has.length` - Check if the input has a specific length

### Name Checks

- `has.name` - Check if the input data structure has member with name

### Value Checks

- `is.UUID` - Check if the input is a UUID
- `is.email` - Check if the input is an email
- `is.greater.than` - Check if the input is greater than a value
- `is.less.than` - Check if the input is less than a value
- `is.equal.to` - Check if the input is equal to a value
- `is.one.of` - Check if the input is one of the values

## Usage

There are two ways to access the validators:

1. Use the library function to load the validators
2. Create a new instance of the `Validator` component using the package namespace

### Using the library function

1. Load the package

```r
library(Validate)
```

2. Create new instance of the `Validator` component

```r
validate <- Validator()
```

### Using the package namespace

1. Create new instance of the `Validator` component

```r
validate <- Validate::Validator()
```

### Using the validators

The `validate` instance created below can be used to perform validation. For example, test if a variable is not null and throw an error with meaningful message if the variable is NULL.

1. Define test variable

```r
variable <- NULL
```

2. Use the `is.not.NULL` validator to test if the variable is not NULL

```r
result <- variable |> validate[['is.not.NULL']]('variable')
```

Because the variable is NULL, an error will the thrown with the following message:

```r
"Argument.NULL: 'variable' cannot not be NULL."
```
