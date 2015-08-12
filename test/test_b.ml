open OUnit2

open A

let test_b_version test_ctxt = assert_equal "0.1b" B.version

let test_e_object test_ctxt =
  assert_raises (B.UnknownType) (fun _ -> B.build "e")

(* Name the test cases and group them together *)
let b_suite =
"b_suite">:::
  ["test_b_version" >:: test_b_version;
   "test_e_object"  >:: test_e_object]
;;

let () =
  run_test_tt_main b_suite
;;
