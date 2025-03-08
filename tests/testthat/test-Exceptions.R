describe('Exceptions',{
  it('exist',{
    Exceptions |> expect.exist()
  })
})

describe('When exceptions <- Exceptions()',{
  it('then exceptions is a list',{
    # When
    exceptions <- Exceptions()

    # Then
    exceptions |> expect.list()
  })
  it('then exceptions contains `type.mismatch`',{
    # When
    exceptions <- Exceptions()

    # Then
    exceptions[['type.mismatch']] |> expect.exist()
  })
  it('then exceptions contains `argument.NULL`',{
    # When
    exceptions <- Exceptions()

    # Then
    exceptions[['argument.NULL']] |> expect.exist()
  })
  it('then exceptions contains `rows.invalid`',{
    # When
    exceptions <- Exceptions()

    # Then
    exceptions[['rows.invalid']] |> expect.exist()
  })
  it('then exceptions contains `name.invalid`',{
    # When
    exceptions <- Exceptions()

    # Then
    exceptions[['name.invalid']] |> expect.exist()
  })
  it('then exceptions contains `identifier.invalid`',{
    # When
    exceptions <- Exceptions()

    # Then
    exceptions[['identifier.invalid']] |> expect.exist()
  })
  it('then exceptions contains `email.invalid`',{
    # When
    exceptions <- Exceptions()

    # Then
    exceptions[['email.invalid']] |> expect.exist()
  })
  it('then exceptions contains `value.invalid`',{
    # When
    exceptions <- Exceptions()

    # Then
    exceptions[['value.invalid']] |> expect.exist()
  })
})

describe("When input |> exception[['type.mismatch']]()", {
  it("then no exception is thrown if input is FALSE", {
    # Given
    exception <- Exceptions()
    
    # When
    input <- FALSE
    
    # Then
    input |> exception[['type.mismatch']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is TRUE", {
    # Given
    exception <- Exceptions()
    
    expected <- 'expected'
    actual   <- 'actual'

    expected.error <- paste0("Type.Mismatch: Got '", actual, "' but expected '", expected, "'.")
    # When
    input <- TRUE
    
    # Then
    input |> exception[['type.mismatch']](actual, expected) |> expect.error(expected.error)
  })
})

describe("When input |> exception[['argument.NULL']]()", {
  it("then no exception is thrown if input is FALSE", {
    # Given
    exception <- Exceptions()
    
    # When
    input <- FALSE
    
    # Then
    input |> exception[['argument.NULL']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is TRUE", {
    # Given
    exception <- Exceptions()
    
    argument <- 'argument'
    expected.error <- paste0("Argument.NULL: '", argument, "' cannot not be NULL.")
    # When
    input <- TRUE
    
    # Then
    input |> exception[['argument.NULL']](argument) |> expect.error(expected.error)
  })
})

describe("When input |> exception[['rows.invalid']]()", {
  it("then no exception is thrown if input is FALSE", {
    # Given
    exception <- Exceptions()
    
    # When
    input <- FALSE
    
    # Then
    input |> exception[['rows.invalid']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is TRUE", {
    # Given
    exception <- Exceptions()
    
    actual  <- 1
    expected <- 0
    expected.error <- paste0("Rows.Invalid: Got ", actual, " rows but expected ", expected, " rows.")
    # When
    input <- TRUE
    
    # Then
    input |> exception[['rows.invalid']](actual, expected) |> expect.error(expected.error)
  })
})

describe("When input |> exception[['name.invalid']]()", {
  it("then no exception is thrown if input is FALSE", {
    # Given
    exception <- Exceptions()
    
    # When
    input <- FALSE
    
    # Then
    input |> exception[['name.invalid']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is TRUE", {
    # Given
    exception <- Exceptions()
    
    name <- 'name'
    expected.error <- paste0("Name.Invalid: '", name, "' is not a valid name.")
    # When
    input <- TRUE
    
    # Then
    input |> exception[['name.invalid']](name) |> expect.error(expected.error)
  })
})

describe("When input |> exception[['identifier.invalid']]()", {
  it("then no exception is thrown if input is FALSE", {
    # Given
    exception <- Exceptions()
    
    # When
    input <- FALSE
    
    # Then
    input |> exception[['identifier.invalid']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is TRUE", {
    # Given
    exception <- Exceptions()
    
    identifier <- 'identifier'
    expected.error <- paste0("Identifier.Invalid: '", identifier, "' is not a valid UUID.")

    # When
    input <- TRUE
    
    # Then
    input |> exception[['identifier.invalid']](identifier) |> expect.error(expected.error)
  })
})

describe("When input |> exception[['email.invalid']]()", {
  it("then no exception is thrown if input is FALSE", {
    # Given
    exception <- Exceptions()
    
    # When
    input <- FALSE
    
    # Then
    input |> exception[['email.invalid']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is TRUE", {
    # Given
    exception <- Exceptions()
    
    email <- 'email'
    expected.error <- paste0("Email.Invalid: '", email, "' is not a valid email address.")
    # When
    input <- TRUE
    
    # Then
    input |> exception[['email.invalid']](email) |> expect.error(expected.error)
  })
})

describe("When input |> exception[['value.invalid']]()", {
  it("then no exception is thrown if input is FALSE", {
    # Given
    exception <- Exceptions()
    
    # When
    input <- FALSE
    
    # Then
    input |> exception[['value.invalid']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is TRUE", {
    # Given
    exception <- Exceptions()
    
    actual  <- 'actual'
    type    <- 'type'
    value   <- 'value'
    expected.error <- paste0("Value.Invalid: Got '", actual, "' but expected a value ", type, value, ".")
    # When
    input <- TRUE
    
    # Then
    input |> exception[['value.invalid']](actual, type, value) |> expect.error(expected.error)
  })
})