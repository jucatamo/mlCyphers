module CifradorCesar = struct
    include Array
    include Core    
    let listaAlfabeto = [|"A"; "B"; "C"; "D"; "E"; "F"; "G"; "H"; "I"; "J"; "K"; "L"; "M"; "N"; "O"; "P"; "Q"; "R"; "S"; "T"; "U"; "V"; "W"; "X"; "Y"; "Z"|]
    
    let rec transponer alfabeto (letraBuscada : string) (n : int) (posiciones : int) =
        if alfabeto.(n) = letraBuscada then (n + posiciones)
        else (transponer alfabeto letraBuscada (n+1) posiciones)

    let cifrar (cadenaEntrada : string) (posiciones : int) =
        let tamanoCadena = String.length cadenaEntrada in
        let cadenaCodificada = Array.create tamanoCadena "" in
        for i = 0 to (tamanoCadena-1) do
            let letra = Char.to_string cadenaEntrada.[i] in
            let letraTranspuesta = (transponer listaAlfabeto letra 0 posiciones) mod 26 in
            cadenaCodificada.(i) <- listaAlfabeto.(letraTranspuesta)
            
            
        done;
        cadenaCodificada        
        end
        
(*compile with this:
ocamlfind opt -package core -o cCesar cifradorCesar.ml main.ml -linkpkg -thread*)


