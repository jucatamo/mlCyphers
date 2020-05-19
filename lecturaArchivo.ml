module LecturaArchivo = struct
  include Array
  include Core

  let leerArchivo (nombreArchivo : string) = 
    let ch = open_in nombreArchivo in
    let s = really_input_string ch (in_channel_length ch) in
    close_in ch;
    s