```EBNF
(* EBNF (Extended Backus–Naur Form) Grammar definitions for TweetyLang *)

(* GRAMMAR START *)
(* ---------------- *)

program = { top_level_declaration } ;

top_level_declaration = module_definition 
                      | import_statement
                      | function_definition ;

(* Modules *)
(* ---------------- *)
module_definition = "module", module_name, module_body ;
module_name = identifier , { ".", identifier } ;
module_body      = "{" , { top_level_declaration } , "}" ;

import_statement = "import", module_name, ";" ;

(* Identifiers *)
(* ---------------- *)
identifier = character , { character | digit | "_" } ;

(* Functions *)
(* ---------------- *)
function_definition = access_modifier , ( type | "void" ) , identifier , "(" , [ parameters ] , ")" , function_body ;
function_body = "{" , { statement } , "}" ;

function_call = identifier , "(", [ arguments ] , ")" ;
arguments = expression , { "," , expression } ;

(* Statements *)
(* ---------------- *)
statement = raw_statement , ";" ;
raw_statement = return_statement
          | assignment
          | declaration
          | expression_statement ;

assignment = identifier , "=" , expression ;
declaration = type , identifier , "=" , expression ;
return_statement = "return" , [ expression ] ;
expression_statement = expression ; (* Allow function calls *)

(* Expressions *)
(* ---------------- *)
expression = term , { ("+" | "-") , term } ;
term = factor , { ("*" | "/") , factor } ;
factor = number
       | identifier
       | function_call
       | "(" , expression , ")" ;

(* Types *)
(* ---------------- *)

(* Parameters are formatted as: type id, type id, type id etc *)
parameters = parameter , { "," , parameter } ;
parameter = type , identifier ;
type = raw_type , pointer_suffix ;
pointer_suffix = { "*" } ;

raw_type = "i32"
         | "bool" ;

(* Common *)
(* ---------------- *)
access_modifier = "public"
                | "private" ;

character = "A" | "B" | "C" | "D" | "E" | "F" | "G" | "H" | "I" | "J" | "K" | "L"
       | "M" | "N" | "O" | "P" | "Q" | "R" | "S" | "T" | "U" | "V" | "W" | "X"
       | "Y" | "Z"
       | "a" | "b" | "c" | "d" | "e" | "f" | "g" | "h" | "i" | "j" | "k" | "l"
       | "m" | "n" | "o" | "p" | "q" | "r" | "s" | "t" | "u" | "v" | "w" | "x"
       | "y" | "z" ;

number = digit , { digit } ;

digit  = "0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" ;

```
