module CifradorCesar

    let listaAlfabeto = [|"A"; "B"; "C"; "D"; "E"; "F"; "G"; "H"; "I"; "J"; "K"; "L"; "M"; "N"; "O"; "P"; "Q"; "R"; "S"; "T"; "U"; "V"; "W"; "X"; "Y"; "Z"|]
    
    let rec transponer (alfabeto : string[]) (letraBuscada : string) (n : int) (posiciones : int) =
        if alfabeto.[n] = letraBuscada then (n + posiciones)
        else (transponer alfabeto letraBuscada (n+1) posiciones)

    let cifrar (cadenaEntrada : string) =
        let tamanoCadena = String.length cadenaEntrada
        let cadenaCodificada = Array.create tamanoCadena ""
        for i = 0 to (tamanoCadena-1) do
            let letra = (cadenaEntrada.[i]).ToString()
            let letraTranspuesta = (transponer listaAlfabeto letra 0 5) % 26
            cadenaCodificada.[i] <- listaAlfabeto.[letraTranspuesta]
        done       
        



