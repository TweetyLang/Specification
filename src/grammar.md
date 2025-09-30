# 2. Grammar

This is the complete, up-to-date TweetyLang grammar in [EBNF](https://en.wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_form) format. Upon merging updates into this grammar, the changes are propagated to the [ANTLR](https://www.antlr.org/) version, which is used directly by `TweetyLang.Parser`. As such, this document serves as the single source of truth for the TweetyLang grammar.

If you notice differences between this document and the ANTLR grammar, please open an Issue or Pull Request to correct them. For issues in the EBNF grammar, open an issue in the specification repository. For issues in the ANTLR grammar, open an issue in the TweetyLang repository.

```EBNF
(* EBNF (Extended Backus–Naur Form) Grammar definitions for TweetyLang *)

(* GRAMMAR START *)
(* ---------------- *)

program = { top_level_declaration } ;

top_level_declaration = module_definition 
                      | import_statement ;

(* Modules *)
(* ---------------- *)
module_definition = "module", module_name, module_block ;
module_name = identifier , { "::", identifier } ;
module_block      = "{" , { definition } , "}" ; (* Allowed items inside of a module *)

import_statement = "import", module_name, ";" ;

(* Identifiers *)
(* ---------------- *)
identifier = character , { character | digit | "_" } ;

(* Structs *)
(* ---------------- *)
struct_definition = { modifier } , "struct" , identifier , object_block ;

object_block = "{" , { function_definition | field_declaration } , "}" ; (* Allowed items inside of an object definition (struct, class, etc) *)

(* Functions *)
(* ---------------- *)
function_definition = { modifier } , ( type | "void" ) , identifier , "(" , [ parameters ] , ")" , ( statement_block | ";" ) ;

function_call = identifier , "(", [ arguments ] , ")" ;
arguments = expression , { "," , expression } ;

definition = struct_definition
           | function_definition ;

(* Fields *)
(* ---------------- *)
field_declaration = type , identifier , [ "=" , expression ] , ";" ;

(* Statements *)
(* ---------------- *)
statement_block = "{" , { statement | compound_statement } , "}" ;

statement = raw_statement , ";" ;
raw_statement = return_statement
          | assignment
          | declaration
          | expression_statement ;

(* A Compound Statement is a statement that includes other statements, i.e., an if statement *)
compound_statement = if_statement ;

assignment = identifier , "=" , expression ;
declaration = type , whitespace , identifier , "=" , expression ;
return_statement = "return" , [ expression ] ;
expression_statement = expression ; (* Allow function calls, object instantiation, etc *)

(* If Statement *)
(* ---------------- *)
if_statement = "if" , "(" , expression , ")" , statement_block , [ else_block ] ;
else_block = "else" , statement_block ;

(* Expressions *)
(* ---------------- *)
expression = term , { ("+" | "-") , term } ;
term = factor , { ("*" | "/") , factor } ;

factor = member_access | primary ;
primary = number
        | boolean_literal
        | char_literal
        | string_literal
        | object_instantiation
        | function_call
        | identifier
        | "(" , expression , ")" ;

member_access = primary , { ".", identifier, [ "(", [ arguments ], ")" ] } ;
boolean_literal = "true" | "false" ;
object_instantiation = "new" , identifier , "(", [ arguments ] , ")" ;

(* Types *)
(* ---------------- *)

(* Parameters are formatted as: type id, type id, type id etc *)
parameters = parameter , { "," , parameter } ;
parameter = type , identifier ;
type = raw_type , pointer_suffix ;
pointer_suffix = { "*" } ;

raw_type = "i32"
         | "bool"
         | "char"
         | identifier ;

(* Common *)
(* ---------------- *)
modifier = "export"
         | "extern" ;

string_literal = "\"", { character | escape_sequence }, "\"" ; (* IMPORTANT: In actual implementation, string literals can have any printable character *)
char_literal = "'" , ( character | escape_sequence ), "'" ; (* IMPORTANT: In actual implementation, char literals can have any printable character *)

escape_sequence = "\\" , ( "n" | "t" | "r" | "\"" | "'" | "\\" ) ;

whitespace = " " | "\t" | "\n" | "\r" ;

character = "A" | "B" | "C" | "D" | "E" | "F" | "G" | "H" | "I" | "J" | "K" | "L"
       | "M" | "N" | "O" | "P" | "Q" | "R" | "S" | "T" | "U" | "V" | "W" | "X"
       | "Y" | "Z"
       | "a" | "b" | "c" | "d" | "e" | "f" | "g" | "h" | "i" | "j" | "k" | "l"
       | "m" | "n" | "o" | "p" | "q" | "r" | "s" | "t" | "u" | "v" | "w" | "x"
       | "y" | "z" ;


number = digit , { digit } ;

digit  = "0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" ;

```
