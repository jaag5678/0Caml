(*This code should be ideally tested in the OCAML terminal to see what happens behind the scenes. IT is easy to grasp that way *)


(* 'let name = expression'  is used to define an expression. *)

let a = 100;;
print_int a;;
print_newline;;

(* 'let name arg1 arg2 .. = expression' is used to define a fucntion *)
let average a b = 
    let sum = a +. b in 
        sum /. 2.0;;

print_float (average 10.2 20.1);;

(* Note that the let name = expression is not a form of stroing a variable but just a mapping to a value (like a macro but not the same) *)

(* ANnohter example to show my point *)

let square a b = 
    let x = a +. b in 
        x *. x;;
print_float (square 10.0 10.0);;

(*To really create a varaible we need to use something like pointer in C in OCAML. We call this as references*)

let a = ref 100;;
a;;

(*You can use the ':=' operator to change the value in the refernece variable. Note that you cannot change any other content that is not referenced *)

a := 101212121;;

(*We can create nice nested functions in OCAML *)

let nest1 a b = 
   let gg x = 
        x * x;;


(*Syntax is a bi messed up so take care *)