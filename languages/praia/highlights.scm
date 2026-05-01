; Keywords
"let" @keyword
"func" @keyword.function
"class" @keyword
"enum" @keyword
"extends" @keyword
"static" @keyword
"if" @keyword
"elif" @keyword
"else" @keyword
"for" @keyword
"while" @keyword
"in" @keyword
"is" @keyword
"match" @keyword
"when" @keyword
"return" @keyword.return
"yield" @keyword.return
"break" @keyword
"continue" @keyword
"try" @keyword
"catch" @keyword
"throw" @keyword
"finally" @keyword
"ensure" @keyword
"defer" @keyword
"use" @keyword
"export" @keyword
"as" @keyword
"async" @keyword
"await" @keyword
"lam" @keyword.function

; Literals
(true) @boolean
(false) @boolean
(nil) @constant.builtin
(this) @variable.special
(super) @variable.special

; Numbers
(number) @number

; Strings
(string) @string
(triple_string) @string
(escape_sequence) @string.escape
(interpolation
  "%{" @punctuation.special
  "}" @punctuation.special)

; Comments
(line_comment) @comment
(block_comment) @comment

; Functions
(function_declaration
  name: (identifier) @function)
(call_expression
  (primary_expression
    (identifier) @function))
(call_expression
  (primary_expression
    (member_expression
      (identifier) @function . )))

; Parameters
(parameter
  name: (identifier) @variable.parameter)
(spread_parameter
  (identifier) @variable.parameter)

; Classes
(class_declaration
  name: (identifier) @type)
(class_declaration
  superclass: (identifier) @type)

; Enums
(enum_declaration
  name: (identifier) @type)

; Decorators
(decorator "@" @attribute)

; Map keys
(pair
  key: (identifier) @property)

; Operators
"=" @operator
"+=" @operator
"-=" @operator
"*=" @operator
"/=" @operator
"%=" @operator
"+" @operator
"-" @operator
"*" @operator
"/" @operator
"%" @operator
"==" @operator
"!=" @operator
"<" @operator
"<=" @operator
">" @operator
">=" @operator
"&&" @operator
"||" @operator
"!" @operator
"??" @operator
"?." @operator
"?[" @operator
"|>" @operator
"|?>" @operator
".." @operator
"..." @operator
"&" @operator
"|" @operator
"^" @operator
"~" @operator
"<<" @operator
">>" @operator
"++" @operator
"--" @operator
"?" @operator

; Punctuation
"(" @punctuation.bracket
")" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket
"," @punctuation.delimiter
";" @punctuation.delimiter
":" @punctuation.delimiter
"." @punctuation.delimiter

; Identifiers (fallback)
(identifier) @variable
