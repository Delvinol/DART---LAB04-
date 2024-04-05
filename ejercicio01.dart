class Usuario {
  late String nombre;
  late String email;
  late String password;

  Usuario(this.nombre, this.email, this.password);
}

mixin Autenticacion {
  void iniciarSesion() {
    print('Se ha iniciado sesión');
  }
}

class UsuarioAutenticado extends Usuario with Autenticacion {
  
  UsuarioAutenticado(String nombre, String email, String password) : super(nombre, email, password);
  //  super se utiliza para llamar a los constructores de la clase padre cuando estás definiendo una clase que hereda de otra clase.
}

void main() {
  var usuario = UsuarioAutenticado('Delvin', 'delvin.larez@tecsup.edu.pe', 'Fgmco04d*');
  usuario.iniciarSesion();
}

