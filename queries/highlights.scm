; Functions

(call_expression
  function: (qualified_identifier
    name: (identifier) @function))

(call_expression
  function: (identifier) @function)

(call_expression
  function: (field_expression
    field: (field_identifier) @function))

(template_function
  name: (identifier) @function)

(template_method
  name: (field_identifier) @function)

(template_function
  name: (identifier) @function)

(function_declarator
  declarator: (qualified_identifier
    name: (identifier) @function))

(function_declarator
  declarator: (qualified_identifier
    name: (identifier) @function))

(function_declarator
  declarator: (field_identifier) @function)

(function_declarator
  declarator: (identifier) @function)

(function_declarator
  declarator: (qualified_identifier
    scope: (template_type) @function))
  
(function_declarator
  declarator:(identifier)@function)
  
(assignment_expression
  right:(call_expression
    function:(identifier)@function))

; Types
((namespace_identifier) @type
 (#match? @type "^[A-Z]"))

(function_declarator
  declarator: (qualified_identifier
    scope: (namespace_identifier) @type))

(struct_specifier
  name: (type_identifier) @type)


; Constants

(this) @variable.builtin

(null "nullptr" @constant)

(null "NULL" @constant)

; Literal
[(number_literal)]@number

[
  (true)
  (false)
] @constant.builtin

[
  (char_literal)
  (string_literal)
] @string
(escape_sequence) @string.escape

; Keywords

[
 "catch"
 "class"
 "co_await"
 "co_return"
 "co_yield"
 "constexpr"
 "constinit"
 "consteval"
 "delete"
 "else"
 "explicit"
 "final"
 "for"
 "friend"
 "if"
 "mutable"
 "namespace"
 "noexcept"
 "new"
 "override"
 "private"
 "protected"
 "public"
 "return"
 "struct"
 "template"
 "throw"
 "try"
 "typename"
 "using"
 "virtual"
 "concept"
 "requires"
 "while"
] @keyword

; Strings

(raw_string_literal) @string

(identifier)@variable

(field_identifier)@variable

(type_identifier) @type

(primitive_type)@type.builtin
