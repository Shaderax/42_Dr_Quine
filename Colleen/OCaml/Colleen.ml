let jesuisunefun = fun (s) -> Printf.printf s 10 s;; 

(* YOLO *)

let chaine = "let jesuisunefun = fun (s) -> (Printf.printf s 10 34 s);;%c%c(* YOLO *)%c%clet chaine = \"%s\";;%c%clet main = fun () -> ( (* OUi*) jesuisunefun (chaine));;%c%cmain ()";;

let main = fun () -> (* OUi *) jesuisunefun ("%d%s");;

(* (fun s -> Printf.printf "%s %S;;" s s ) "(fun s -> Printf.printf \"%s %S;;\" s s)" (* Oui *) *)

main ()
