(** Example of usage of the factory method *)

let my_c = A.B.build("c") in my_c#foo ();
let my_d = A.B.build("d") in my_d#foo ();

(* Should fail miserably *)
let my_e = A.B.build("e") in my_e#foo ();
