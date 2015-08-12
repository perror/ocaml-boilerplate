(** Module A of the boilerplate project *)

module B =
struct
  include B
end

(** Version of the module A *)
let version = "0.1a"

(** Main function of the module A *)
let bar x = x*x
