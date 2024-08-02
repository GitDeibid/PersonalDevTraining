/**
 * Corresponde a una función que se llama dentro de otra función.
 * Se envía la función como argumento.
 * Los callback en dart normalmente se emplean mediante tareas asincronas. 
 */


void main(List<String> args) {

  obtenerUsuario('100',(Map persona){
    print(persona);
  });
  
}

void obtenerUsuario(String id, Function callback){
  Map usuario={
    'id':id,
    'Nombre':'Carlos'
  };
  callback(usuario);//Argumento del callback. Al llegar a esta linea, ejecuta la función que fue enviada por argumento en la utilización de "ObtenerUsuario" en el code.
}