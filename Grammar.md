```EBNF
(* EBNF (Extended Backus–Naur Form) Grammar definitions for TweetyLang *)

(* GRAMMAR START *)
(* ---------------- *)

program = { module_definition | import_statement } ;

(* Modules *)
(* ---------------- *)
module_definition = "module", module_name, block ;
module_name = identifier , { ".", identifier } ;
import_statement = "import", module_name, ";" ;

(* Identifiers *)
(* ---------------- *)
identifier = character , { character | digit | "_" } ;

(* Functions *)
(* ---------------- *)
function_definition = access_modifier , ( type | "void" ) , identifier , "(" , [ parameters ] , ")" , block ;

(* Types *)
(* ---------------- *)

(* Parameters are formatted as: type id, type id, type id etc *)
parameters = parameter , { "," , parameter } ;
parameter = type , identifier ;
type = "i32" ;

(* Common *)
(* ---------------- *)
block = "{" , { function_definition } , "}" ;
access_modifier = "public" | "private" ;


(* Characters & Digits *)
(* ---------------- *)
character = "A" | "B" | "C" | "D" | "E" | "F" | "G" | "H" | "I" | "J" | "K" | "L"
       | "M" | "N" | "O" | "P" | "Q" | "R" | "S" | "T" | "U" | "V" | "W" | "X"
       | "Y" | "Z"
       | "a" | "b" | "c" | "d" | "e" | "f" | "g" | "h" | "i" | "j" | "k" | "l"
       | "m" | "n" | "o" | "p" | "q" | "r" | "s" | "t" | "u" | "v" | "w" | "x"
       | "y" | "z" ;

digit  = "0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" ;

```
