Exceptions <- \() {
  exceptions <- list()
  exceptions[['type.mismatch']]      <- \(invoke, actual, expected) {
    if(invoke) stop("Type.Mismatch: Got '", actual, "' but expected '", expected, "'.", call. = FALSE)
  }
  exceptions[['argument.NULL']]      <- \(invoke, argument) {
    if(invoke) stop("Argument.NULL: '", argument, "' cannot not be NULL.", call. = FALSE)
  }
  exceptions[['rows.invalid']]       <- \(invoke, actual, expected) {
    if(invoke) stop("Rows.Invalid: Got ", actual, " rows but expected ", expected, " rows.", call. = FALSE)
  }
  exceptions[['name.invalid']]       <- \(invoke, name) {
    if(invoke) stop("Name.Invalid: '", name, "' is not a valid name.", call. = FALSE)
  }
  exceptions[['identifier.invalid']] <- \(invoke, identifier) {
    if(invoke) stop("Identifier.Invalid: '", identifier, "' is not a valid UUID.", call. = FALSE)
  } 
  exceptions[['email.invalid']]      <- \(invoke, email) {
    if(invoke) stop("Email.Invalid: '", email, "' is not a valid email address.", call. = FALSE)
  }
  exceptions[['value.invalid']]      <- \(invoke, actual, type, value) {
    if(invoke) {
      if(value |> length() |> (\(x) x > 1)()) value <- paste(value, collapse = ', ')
      stop("Value.Invalid: Got '", actual, "' but expected a value ", type, value, ".", call. = FALSE)
    }
  }
  return(exceptions)
}