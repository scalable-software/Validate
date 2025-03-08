#' Validator'
#' 
#' @description
#' Validator which returns a generic set of validators and accompanied exceptions.
#'  
#' @usage NULL
#' @returns a list value: 
#' * `input |> validate[['is.not.NULL']](argument)`
#' * `input |> validate[['is.data.frame']]()`
#' * `input |> validate[['is.vector']]()`
#' * `input |> validate[['is.character']]()`
#' * `input |> validate[['is.numeric']]()`
#' * `input |> validate[['is.integer']]()`
#' * `input |> validate[['is.double']]()`
#' * `input |> validate[['is.logical']]()`
#' * `input |> validate[['is.complex']]()`
#' * `input |> validate[['is.raw']]()`
#' * `input |> validate[['is.factor']]()`
#' * `input |> validate[['is.matrix']]()`
#' * `input |> validate[['is.array']]()`
#' * `input |> validate[['is.list']]()`
#' * `input |> validate[['is.empty']]()`
#' * `input |> validate[['is.not.empty']]()`
#' * `input |> validate[['has.one.row']]()`
#' * `input |> validate[['has.length']](length)`
#' * `input |> validate[['has.name']](name)`
#' * `input |> validate[['is.UUID']]()`
#' * `input |> validate[['is.email']]()`
#' * `input |> validate[['is.greater.than']](value)`
#' * `input |> validate[['is.less.than']](value)`
#' * `input |> validate[['is.equal.to']](value)`
#' * `input |> validate[['is.one.of']](values)`
#' @export
Validator <- \() {
  exception <- Exceptions()

  validators <- list()
  validators[['is.not.NULL']]     <- \(input, argument) {
    input |> is.null() |> exception[['argument.NULL']](argument)
    return(input)
  }
  validators[['is.data.frame']]   <- \(input) {
    input |> is.data.frame() |> isFALSE() |> exception[['type.mismatch']](input |> class(), 'data.frame')
    return(input)
  }
  validators[['is.vector']]       <- \(input) {
    input |> is.vector() |> isFALSE() |> exception[['type.mismatch']](input |> class(), 'vector')
    return(input)
  }
  validators[['is.character']]    <- \(input) {
    input |> is.character() |> isFALSE() |> exception[['type.mismatch']](input |> class(), 'character')
    return(input)
  }
  validators[['is.numeric']]      <- \(input) {
    input |> is.numeric() |> isFALSE() |> exception[['type.mismatch']](input |> class(), 'numeric')
    return(input)
  }
  validators[['is.integer']]      <- \(input) {
    input |> is.integer() |> isFALSE() |> exception[['type.mismatch']](input |> class(), 'integer')
    return(input)
  }
  validators[['is.double']]       <- \(input) {
    input |> is.double() |> isFALSE() |> exception[['type.mismatch']](input |> class(), 'double')
    return(input)
  }
  validators[['is.logical']]      <- \(input) {
    input |> is.logical() |> isFALSE() |> exception[['type.mismatch']](input |> class(), 'logical')
    return(input)
  }
  validators[['is.complex']]      <- \(input) {
    input |> is.complex() |> isFALSE() |> exception[['type.mismatch']](input |> class(), 'complex')
    return(input)
  }
  validators[['is.raw']]          <- \(input) {
    input |> is.raw() |> isFALSE() |> exception[['type.mismatch']](input |> class(), 'raw')
    return(input)
  }
  validators[['is.factor']]       <- \(input) {
    input |> is.factor() |> isFALSE() |> exception[['type.mismatch']](input |> class(), 'factor')
    return(input)
  }
  validators[['is.matrix']]       <- \(input) {
    input |> is.matrix() |> isFALSE() |> exception[['type.mismatch']](input |> class(), 'matrix')
    return(input)
  }
  validators[['is.array']]        <- \(input) {
    input |> is.array() |> isFALSE() |> exception[['type.mismatch']](input |> class(), 'array')
    return(input)
  }
  validators[['is.list']]         <- \(input) {
    input |> is.list() |> isFALSE() |> exception[['type.mismatch']](input |> class(), 'list')
    return(input)
  }
  validators[['is.empty']]        <- \(input) {
    actual.rows <- input |> nrow()
    actual.rows |> (\(x) x == 0)() |> isFALSE() |> exception[['rows.invalid']](actual.rows,0)
    return(input)
  }
  validators[['is.not.empty']]    <- \(input) {
    actual.rows <- input |> nrow()
    actual.rows |> (\(x) x == 0)() |> isTRUE() |> exception[['rows.invalid']](actual.rows,'>0')
    return(input)
  }
  validators[['has.one.row']]     <- \(input) {
    actual.rows <- input |> nrow()
    actual.rows |> (\(x) x == 1)() |> isFALSE() |> exception[['rows.invalid']](actual.rows,1)
    return(input)
  }
  validators[['has.length']]      <- \(input, length) {
    actual.length <- input |> length()
    actual.length |> (\(x) x == length)() |> isFALSE() |> exception[['rows.invalid']](actual.length,length)
    return(input)
  }
  validators[['has.name']]        <- \(input, name) {
    actual.names <- input |> names()
    actual.names |> (\(x) x == name)() |> any() |> isFALSE() |> exception[['name.invalid']](name)
    return(input)
  }
  validators[['is.UUID']]         <- \(input) {
    pattern <- "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"
    pattern |> grepl(input) |> isFALSE() |> exception[['identifier.invalid']](input)
    return(input)
  }
  validators[['is.email']]        <- \(input) {
    pattern <- "^[A-Za-z0-9_.+\\-]+@[A-Za-z0-9\\-]+\\.[A-Za-z0-9.\\-]+$"
    pattern |> grepl(input) |> isFALSE() |> exception[['email.invalid']](input)
    return(input)
  }
  validators[['is.greater.than']] <- \(input, value) {
    input |> (\(x) x > value)() |> isFALSE() |> exception[['value.invalid']](input, 'greater then ', value)
    return(input)
  }
  validators[['is.less.than']]    <- \(input, value) {
    input |> (\(x) x < value)() |> isFALSE() |> exception[['value.invalid']](input, 'less then ', value)
    return(input)
  }
  validators[['is.equal.to']]     <- \(input, value) {
    input |> (\(x) x == value)() |> isFALSE() |> exception[['value.invalid']](input, 'equal to ', value)
    return(input)
  }
  validators[['is.one.of']]       <- \(input, values) {
    input |> (\(x) x == values)() |> any() |> isFALSE() |> exception[['value.invalid']](input, 'in vector: ', values)
    return(input)
  }
  return(validators)
}