include CifradorCesar
open Printf
let main () = 
  let cadena = Sys.argv.(1) in
  let posiciones =  int_of_string Sys.argv.(2) in
  let cadenaCifrada = CifradorCesar.cifrar cadena posiciones in
  (*let () = Array.iter (printf "%s") cadenaCifrada*)
  for i= 0 to (Array.length cadenaCifrada -1) do
    printf "%s" cadenaCifrada.(i)
  done;;
main ()