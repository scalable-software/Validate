describe('Validator',{
  it('Exist',{
    Validator |> expect.exist()
  })
})

describe("When validators <- Validator()",{
  it('then validators is a list',{
    # When
    validators <- Validator()

    # Then
    validators |> expect.list()
  })
  it('then validators contains `is.not.NULL`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.not.NULL']] |> expect.exist()
  })
  it('then validators contains `is.data.frame`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.data.frame']] |> expect.exist()
  })
  it('then validators contains `is.vector`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.vector']] |> expect.exist()
  })
  it('then validators contains `is.character`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.character']] |> expect.exist()
  })
  it('then validators contains `is.numeric`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.numeric']] |> expect.exist()
  })
  it('then validators contains `is.integer`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.integer']] |> expect.exist()
  })
  it('then validators contains `is.double`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.double']] |> expect.exist()
  })
  it('then validators contains `is.logical`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.logical']] |> expect.exist()
  })
  it('then validators contains `is.complex`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.complex']] |> expect.exist()
  })
  it('then validators contains `is.raw`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.raw']] |> expect.exist()
  })
  it('then validators contains `is.factor`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.factor']] |> expect.exist()
  })
  it('then validators contains `is.matrix`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.matrix']] |> expect.exist()
  })
  it('then validators contains `is.array`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.array']] |> expect.exist()
  })
  it('then validators contains `is.list`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.list']] |> expect.exist()
  })
  it('then validators contains `is.empty`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.empty']] |> expect.exist()
  })
  it('then validators contains `is.not.empty`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.not.empty']] |> expect.exist()
  })
  it('then validators contains `has.one.row`',{
    # When
    validators <- Validator()

    # Then
    validators[['has.one.row']] |> expect.exist()
  })
  it('then validators contains `has.length`',{
    # When
    validators <- Validator()

    # Then
    validators[['has.length']] |> expect.exist()
  })
  it('then validators contains `has.name`',{
    # When
    validators <- Validator()

    # Then
    validators[['has.name']] |> expect.exist()
  })
  it('then validators contains `is.UUID`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.UUID']] |> expect.exist()
  })
  it('then validators contains `is.email`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.email']] |> expect.exist()
  })
  it('then validators contains `is.greater.than`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.greater.than']] |> expect.exist()
  })
  it('then validators contains `is.less.than`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.less.than']] |> expect.exist()
  })
  it('then validators contains `is.equal.to`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.equal.to']] |> expect.exist()
  })
  it('then validators contains `is.one.of`',{
    # When
    validators <- Validator()

    # Then
    validators[['is.one.of']] |> expect.exist()
  })
})

describe("When input |> validate[['is.not.NULL']](argument)",{
  it("then no exception is thrown if input is not NULL",{
    # Given
    validate <- Validator()
    
    # When
    input <- ''
    
    # Then
    input |> validate[['is.not.NULL']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is NULL",{
    # Given
    validate <- Validator()

    argument <- 'input'
    
    expected.error <- paste0("Argument.NULL: '",argument,"' cannot not be NULL.")
    
    # When
    input <- NULL 
    
    # Then
    input |> validate[['is.not.NULL']](argument) |> expect.error(expected.error)
  })
  it('then input is returned if input is not NULL',{
    # Given
    validate <- Validator()
    
    # When
    input <- ''
    
    # Then
    input |> validate[['is.not.NULL']]() |> expect.equal(input)
  })
})

describe("When input |> validate[['is.data.frame']]()",{
  it("then no exception is thrown if input is data.frame",{
    # Given
    validate <- Validator()
    
    # When
    input <- data.frame()  
    
    # Then
    input |> validate[['is.data.frame']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is not data.frame",{
    # Given
    validate <- Validator()
    
    expected.error <- "Type.Mismatch: Got 'list' but expected 'data.frame'."
    
    # When
    input <- list() 
    
    # Then
    input |> validate[['is.data.frame']]() |> expect.error(expected.error)
  })
  it('then input is returned if input is data.frame',{
    # Given
    validate <- Validator()
    
    # When
    input <- data.frame()  
    
    # Then
    input |> validate[['is.data.frame']]() |> expect.equal(input)
  })
})

describe("When input |> validate[['is.vector']]()",{
  it("then no exception is thrown if input is vector",{
    # Given
    validate <- Validator()
    
    # When
    input <- ''  
    
    # Then
    input |> validate[['is.vector']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is not vector",{
    # Given
    validate <- Validator()
    
    expected.error <- "Type.Mismatch: Got 'data.frame' but expected 'vector'."
    
    # When
    input <- data.frame() 
    
    # Then
    input |> validate[['is.vector']]() |> expect.error(expected.error)
  })
  it("then input is returned if input is vector",{
    # Given
    validate <- Validator()
    
    # When
    input <- ''  
    
    # Then
    input |> validate[['is.vector']]() |> expect.equal(input)
  })
})

describe("When input |> validate[['is.character']]()",{
  it("then no exception is thrown if input is character",{
    # Given
    validate <- Validator()
    
    # When
    input <- ''  
    
    # Then
    input |> validate[['is.character']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is not character",{
    # Given
    validate <- Validator()
    
    expected.error <- "Type.Mismatch: Got 'numeric' but expected 'character'."
    
    # When
    input <- 1 
    
    # Then
    input |> validate[['is.character']]() |> expect.error(expected.error)
  })
  it("then input is returned if input is character",{
    # Given
    validate <- Validator()
    
    # When
    input <- ''  
    
    # Then
    input |> validate[['is.character']]() |> expect.equal(input)
  })
})

describe("When input |> validate[['is.numeric']]()",{
  it("then no exception is thrown if input is numeric",{
    # Given
    validate <- Validator()
    
    # When
    input <- 1  
    
    # Then
    input |> validate[['is.numeric']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is not numeric",{
    # Given
    validate <- Validator()
    
    expected.error <- "Type.Mismatch: Got 'character' but expected 'numeric'."
    
    # When
    input <- '' 
    
    # Then
    input |> validate[['is.numeric']]() |> expect.error(expected.error)
  })
  it("then input is returned if input is numeric",{
    # Given
    validate <- Validator()
    
    # When
    input <- 1  
    
    # Then
    input |> validate[['is.numeric']]() |> expect.equal(input)
  })
})

describe("When input |> validate[['is.integer']]()",{
  it("then no exception is thrown if input is integer",{
    # Given
    validate <- Validator()
    
    # When
    input <- 1L  
    
    # Then
    input |> validate[['is.integer']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is not integer",{
    # Given
    validate <- Validator()
    
    expected.error <- "Type.Mismatch: Got 'character' but expected 'integer'."
    
    # When
    input <- '' 
    
    # Then
    input |> validate[['is.integer']]() |> expect.error(expected.error)
  })
  it("then input is returned if input is integer",{
    # Given
    validate <- Validator()
    
    # When
    input <- 1L  
    
    # Then
    input |> validate[['is.integer']]() |> expect.equal(input)
  })
})

describe("When input |> validate[['is.double']]()",{
  it("then no exception is thrown if input is double",{
    # Given
    validate <- Validator()
    
    # When
    input <- 1  
    
    # Then
    input |> validate[['is.double']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is not double",{
    # Given
    validate <- Validator()
    
    expected.error <- "Type.Mismatch: Got 'character' but expected 'double'."
    
    # When
    input <- '' 
    
    # Then
    input |> validate[['is.double']]() |> expect.error(expected.error)
  })
  it("then input is returned if input is double",{
    # Given
    validate <- Validator()
    
    # When
    input <- 1  
    
    # Then
    input |> validate[['is.double']]() |> expect.equal(input)
  })
})

describe("When input |> validate[['is.logical']]()",{
  it("then no exception is thrown if input is logical",{
    # Given
    validate <- Validator()
    
    # When
    input <- TRUE  
    
    # Then
    input |> validate[['is.logical']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is not logical",{
    # Given
    validate <- Validator()
    
    expected.error <- "Type.Mismatch: Got 'character' but expected 'logical'."
    
    # When
    input <- '' 
    
    # Then
    input |> validate[['is.logical']]() |> expect.error(expected.error)
  })
  it("then input is returned if input is logical",{
    # Given
    validate <- Validator()
    
    # When
    input <- TRUE  
    
    # Then
    input |> validate[['is.logical']]() |> expect.equal(input)
  })
})

describe("When input |> validate[['is.complex']]()",{
  it("then no exception is thrown if input is complex",{
    # Given
    validate <- Validator()
    
    # When
    input <- 3 + 4i 
    
    # Then
    input |> validate[['is.complex']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is not complex",{
    # Given
    validate <- Validator()
    
    expected.error <- "Type.Mismatch: Got 'character' but expected 'complex'."
    
    # When
    input <- '' 
    
    # Then
    input |> validate[['is.complex']]() |> expect.error(expected.error)
  })
  it("then input is returned if input is complex",{
    # Given
    validate <- Validator()
    
    # When
    input <- 3 + 4i 
    
    # Then
    input |> validate[['is.complex']]() |> expect.equal(input)
  })
})

describe("When input |> validate[['is.raw']]()",{
  it("then no exception is thrown if input is raw",{
    # Given
    validate <- Validator()
    
    # When
    input <- charToRaw('a') 
    
    # Then
    input |> validate[['is.raw']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is not raw",{
    # Given
    validate <- Validator()
    
    expected.error <- "Type.Mismatch: Got 'character' but expected 'raw'."
    
    # When
    input <- '' 
    
    # Then
    input |> validate[['is.raw']]() |> expect.error(expected.error)
  })
  it("then input is returned if input is raw",{
    # Given
    validate <- Validator()
    
    # When
    input <- charToRaw('a') 
    
    # Then
    input |> validate[['is.raw']]() |> expect.equal(input)
  })
})

describe("When input |> validate[['is.factor']]()",{
  it("then no exception is thrown if input is factor",{
    # Given
    validate <- Validator()
    
    # When
    input <- factor('a') 
    
    # Then
    input |> validate[['is.factor']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is not factor",{
    # Given
    validate <- Validator()
    
    expected.error <- "Type.Mismatch: Got 'character' but expected 'factor'."
    
    # When
    input <- '' 
    
    # Then
    input |> validate[['is.factor']]() |> expect.error(expected.error)
  })
  it("then input is returned if input is factor",{
    # Given
    validate <- Validator()
    
    # When
    input <- factor('a') 
    
    # Then
    input |> validate[['is.factor']]() |> expect.equal(input)
  })
})

describe("When input |> validate[['is.matrix']]()",{
  it("then no exception is thrown if input is matrix",{
    # Given
    validate <- Validator()
    
    # When
    input <- matrix(1) 
    
    # Then
    input |> validate[['is.matrix']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is not matrix",{
    # Given
    validate <- Validator()
    
    expected.error <- "Type.Mismatch: Got 'character' but expected 'matrix'."
    
    # When
    input <- '' 
    
    # Then
    input |> validate[['is.matrix']]() |> expect.error(expected.error)
  })
  it("then input is returned if input is matrix",{
    # Given
    validate <- Validator()
    
    # When
    input <- matrix(1) 
    
    # Then
    input |> validate[['is.matrix']]() |> expect.equal(input)
  })
})

describe("When input |> validate[['is.array']]()",{
  it("then no exception is thrown if input is array",{
    # Given
    validate <- Validator()
    
    # When
    input <- array(1) 
    
    # Then
    input |> validate[['is.array']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is not array",{
    # Given
    validate <- Validator()
    
    expected.error <- "Type.Mismatch: Got 'character' but expected 'array'."
    
    # When
    input <- '' 
    
    # Then
    input |> validate[['is.array']]() |> expect.error(expected.error)
  })
  it("then input is returned if input is array",{
    # Given
    validate <- Validator()
    
    # When
    input <- array(1) 
    
    # Then
    input |> validate[['is.array']]() |> expect.equal(input)
  })
})

describe("When input |> validate[['is.list']]()",{
  it("then no exception is thrown if input is list",{
    # Given
    validate <- Validator()
    
    # When
    input <- list() 
    
    # Then
    input |> validate[['is.list']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is not list",{
    # Given
    validate <- Validator()
    
    expected.error <- "Type.Mismatch: Got 'character' but expected 'list'."
    
    # When
    input <- '' 
    
    # Then
    input |> validate[['is.list']]() |> expect.error(expected.error)
  })
  it("then input is returned if input is list",{
    # Given
    validate <- Validator()
    
    # When
    input <- list() 
    
    # Then
    input |> validate[['is.list']]() |> expect.equal(input)
  })
})

describe("When input |> validate[['is.empty']]()",{
  it("then no exception is thrown if input is empty",{
    # Given
    validate <- Validator()
    
    # When
    input <- data.frame()  
    
    # Then
    input |> validate[['is.empty']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is not empty",{
    # Given
    validate <- Validator()
    
    expected.error <- "Rows.Invalid: Got 1 rows but expected 0 rows."
    
    # When
    input <- data.frame(var = 1) 
    
    # Then
    input |> validate[['is.empty']]() |> expect.error(expected.error)
  })
  it("then input is returned if input is empty",{
    # Given
    validate <- Validator()
    
    # When
    input <- data.frame()  
    
    # Then
    input |> validate[['is.empty']]() |> expect.equal(input)
  })
})

describe("When input |> validate[['is.not.empty']]()",{
  it("then no exception is thrown if input is not empty",{
    # Given
    validate <- Validator()
    
    # When
    input <- data.frame(var = 1)  
    
    # Then
    input |> validate[['is.not.empty']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is empty",{
    # Given
    validate <- Validator()
    
    expected.error <- "Rows.Invalid: Got 0 rows but expected >0 rows."
    
    # When
    input <- data.frame() 
    
    # Then
    input |> validate[['is.not.empty']]() |> expect.error(expected.error)
  })
  it("then input is returned if input is not empty",{
    # Given
    validate <- Validator()
    
    # When
    input <- data.frame(var = 1)  
    
    # Then
    input |> validate[['is.not.empty']]() |> expect.equal(input)
  })
})

describe("When input |> validate[['has.one.row']]()",{
  it("then no exception is thrown if input has one row",{
    # Given
    validate <- Validator()
    
    # When
    input <- data.frame(var = 1)  
    
    # Then
    input |> validate[['has.one.row']]() |> expect.no.error()
  })
  it("then an exception is thrown if input does not have one row",{
    # Given
    validate <- Validator()
    
    expected.error <- "Rows.Invalid: Got 2 rows but expected 1 rows."
    
    # When
    input <- data.frame(var = 1:2) 
    
    # Then
    input |> validate[['has.one.row']]() |> expect.error(expected.error)
  })
  it("then input is returned if input has one row",{
    # Given
    validate <- Validator()
    
    # When
    input <- data.frame(var = 1)  
    
    # Then
    input |> validate[['has.one.row']]() |> expect.equal(input)
  })
})

describe("When input |> validate[['has.length']]()",{
  it("then no exception is thrown if input has expected length",{
    # Given
    validate <- Validator()
    
    # When
    input <- c(1,2,3)  
    
    # Then
    input |> validate[['has.length']](3) |> expect.no.error()
  })
  it("then an exception is thrown if input does not have expected length",{
    # Given
    validate <- Validator()
    
    expected.error <- "Rows.Invalid: Got 2 rows but expected 3 rows."
    
    # When
    input <- c(1,2) 
    
    # Then
    input |> validate[['has.length']](3) |> expect.error(expected.error)
  })
  it("then input is returned if input has expected length",{
    # Given
    validate <- Validator()
    
    # When
    input <- c(1,2,3)  
    
    # Then
    input |> validate[['has.length']](3) |> expect.equal(input)
  })
})

describe("When input |> validate[['has.name']](name)",{
  it("then no exception is thrown if input has expected name",{
    # Given
    validate <- Validator()
    
    # When
    input <- data.frame(var = 1)  
    
    # Then
    input |> validate[['has.name']]('var') |> expect.no.error()
  })
  it("then an exception is thrown if input does not have expected name",{
    # Given
    validate <- Validator()
    
    expected.error <- "Name.Invalid: 'var' is not a valid name."
    
    # When
    input <- data.frame(var1 = 1, var2 = 2) 
    
    # Then
    input |> validate[['has.name']]('var') |> expect.error(expected.error)
  })
  it("then input is returned if input has expected name",{
    # Given
    validate <- Validator()
    
    # When
    input <- data.frame(var = 1)  
    
    # Then
    input |> validate[['has.name']]('var') |> expect.equal(input)
  })
})

describe("When input |> validate[['is.UUID']]()",{
  it("then no exception is thrown if input is UUID",{
    # Given
    validate <- Validator()
    
    # When
    input <- uuid::UUIDgenerate()  
    
    # Then
    input |> validate[['is.UUID']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is not UUID",{
    # Given
    validate <- Validator()
    
    identifier <- 'identifier'
    expected.error <- paste0("Identifier.Invalid: '",identifier,"' is not a valid UUID.")
    
    # When
    input <- identifier 
    
    # Then
    input |> validate[['is.UUID']]() |> expect.error(expected.error)
  })
  it("then input is returned if input is UUID",{
    # Given
    validate <- Validator()
    
    # When
    input <- uuid::UUIDgenerate()  
    
    # Then
    input |> validate[['is.UUID']]() |> expect.equal(input)
  })
})

describe("When input |> validate[['is.email']]()",{
  it("then no exception is thrown if input is email",{
    # Given
    validate <- Validator()
    
    # When
    input <- 'test@gmail.com'

    # Then
    input |> validate[['is.email']]() |> expect.no.error()
  })
  it("then an exception is thrown if input is not email",{
    # Given
    validate <- Validator()
    
    email <- 'email'
    expected.error <- paste0("Email.Invalid: '",email,"' is not a valid email address.")
    
    # When
    input <- email 
    
    # Then
    input |> validate[['is.email']]() |> expect.error(expected.error)
  })
  it("then input is returned if input is email",{
    # Given
    validate <- Validator()
    
    # When
    input <- 'test@gmail.com'

    # Then
    input |> validate[['is.email']]() |> expect.equal(input)
  })
})

describe("When input |> validate[['is.greater.then']](value)",{
  it("then no exception is thrown if input is greater than value",{
    # Given
    validate <- Validator()
    
    # When
    input <- 2
    value <- 1

    # Then
    input |> validate[['is.greater.than']](value) |> expect.no.error()
  })
  it("then an exception is thrown if input is not greater than value",{
    # Given
    validate <- Validator()
    
    expected.error <- "Value.Invalid: Got '1' but expected a value greater then 2."
    
    # When
    input <- 1
    value <- 2
    
    # Then
    input |> validate[['is.greater.than']](value) |> expect.error(expected.error)
  })
  it("then input is returned if input is greater than value",{
    # Given
    validate <- Validator()
    
    # When
    input <- 2
    value <- 1

    # Then
    input |> validate[['is.greater.than']](value) |> expect.equal(input)
  })
})

describe("When input |> validate[['is.less.then']](value)",{
  it("then no exception is thrown if input is less than value",{
    # Given
    validate <- Validator()
    
    # When
    input <- 1
    value <- 2

    # Then
    input |> validate[['is.less.than']](value) |> expect.no.error()
  })
  it("then an exception is thrown if input is not less than value",{
    # Given
    validate <- Validator()
    
    expected.error <- "Value.Invalid: Got '2' but expected a value less then 1."
    
    # When
    input <- 2
    value <- 1
    
    # Then
    input |> validate[['is.less.than']](value) |> expect.error(expected.error)
  })
  it("then input is returned if input is less than value",{
    # Given
    validate <- Validator()
    
    # When
    input <- 1
    value <- 2

    # Then
    input |> validate[['is.less.than']](value) |> expect.equal(input)
  })
})

describe("When input |> validate[['is.equal.to']](value)",{
  it("then no exception is thrown if input is equal to value",{
    # Given
    validate <- Validator()
    
    # When
    input <- 1
    value <- 1

    # Then
    input |> validate[['is.equal.to']](value) |> expect.no.error()
  })
  it("then an exception is thrown if input is not equal to value",{
    # Given
    validate <- Validator()
    
    expected.error <- "Value.Invalid: Got '2' but expected a value equal to 1."
    
    # When
    input <- 2
    value <- 1
    
    # Then
    input |> validate[['is.equal.to']](value) |> expect.error(expected.error)
  })
  it("then input is returned if input is equal to value",{
    # Given
    validate <- Validator()
    
    # When
    input <- 1
    value <- 1

    # Then
    input |> validate[['is.equal.to']](value) |> expect.equal(input)
  })
}) 

describe("When input |> validate[['is.one.of']](values)",{
  it("then no exception is thrown if input is one of values",{
    # Given
    validate <- Validator()
    
    # When
    input <- 1
    values <- c(1,2,3)

    # Then
    input |> validate[['is.one.of']](values) |> expect.no.error()
  })
  it("then an exception is thrown if input is not one of values",{
    # Given
    validate <- Validator()
    
    expected.error <- "Value.Invalid: Got '4' but expected a value in vector: 1, 2, 3."
    
    # When
    input <- 4
    values <- c(1,2,3)
    
    # Then
    input |> validate[['is.one.of']](values) |> expect.error(expected.error)
  })
  it("then input is returned if input is one of values",{
    # Given
    validate <- Validator()
    
    # When
    input <- 1
    values <- c(1,2,3)

    # Then
    input |> validate[['is.one.of']](values) |> expect.equal(input)
  })
})
