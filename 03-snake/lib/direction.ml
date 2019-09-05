open! Base

type t =
  | Left
  | Up
  | Right
  | Down
[@@deriving sexp_of]

(* TODO: Implement [next_position].

   Make sure to take a look at the signature of this function to understand what it does.
   Recall that the origin of the board is in the lower left hand corner. *)
let next_position t { Position.row; col } : Position.t = failwith "For you to implement"

let%expect_test "Testing [next_position]..." =
  let position = { Position.row = 5; col = 5 } in
  Stdio.printf !"%{sexp: Position.t}\n%!" (next_position Left position);
  [%expect {| ((col 4) (row 5)) |}];
  Stdio.printf !"%{sexp: Position.t}\n%!" (next_position Right position);
  [%expect {| ((col 6) (row 5)) |}];
  Stdio.printf !"%{sexp: Position.t}\n%!" (next_position Up position);
  [%expect {| ((col 5) (row 6)) |}];
  Stdio.printf !"%{sexp: Position.t}\n%!" (next_position Down position);
  [%expect {| ((col 5) (row 4)) |}]
;;
