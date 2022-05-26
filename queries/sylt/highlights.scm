[
  "and"
  "or"
  "not"
] @keyword.operator

[
  "+"
  "-"
  "*"
  "/"
  "<="
  "<"
  ">="
  ">"
  "=="
  "!="
] @operator

[
  ":"
  ","
  "."
] @punctuation.delimiter

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
 ] @punctation.bracket

(comment) @comment

(identifier) @variable

(type) @type

[
  (int)
  (float)
] @number

(nil) @constant.builtin

(bool) @boolean

(str) @string

"ret" @keyword.return

(function
[
  "fn"
  "pu"
  "do"
  "end"
] @keyword.function)

(call name: (identifier) @function)
(prim_call
[
  "'"
] @operator)
(arrow_call
[
  "->" 
] @operator)

(if
[
  "if"
  "do"
  "else"
  "end"
] @conditional)

(case
[
  "case"
  "->"
  "do"
  "else"
  "end"
] @conditional)

(loop
[
  "loop"
  "do"
  "end"
] @repeat)

(this) @variable.builtin
