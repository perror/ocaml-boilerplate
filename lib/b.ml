(** Module B of the boilerplate project *)

(** virtual class interface B *)
class virtual b =
object (self: 't)
  method virtual foo: unit -> unit
end

(** Private classes to be kept out of sight from users *)
(** C concrete class *)
class c =
object (self)
  inherit b
  method foo () = print_endline "I am a C object !"
end

(** D concrete class *)
class d =
object (self)
  inherit b
  method foo () = print_endline "I am a D object !"
end


(** Version of the module B *)
let version = "0.1b"

(** Raised when given type is unknown *)
exception UnknownType

(** Factory method to select the proper class at runtime *)
let build choice = match choice with
    "c" -> ((new c) : b)
  | "d" -> ((new d) : b)
  | _   -> raise UnknownType
