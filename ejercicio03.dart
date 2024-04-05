class Empleado {
  late String nombre;
  late String apellido;
  late double salario;
  late int horasTrabajadas;

  Empleado(this.nombre, this.apellido, this.salario, this.horasTrabajadas);
}

mixin Bonificaciones {
  double calcularBonificacion(double salario) {
    return salario * 0.10;
  }
}

class EmpleadoConBonificaciones extends Empleado with Bonificaciones {
  EmpleadoConBonificaciones(String nombre, String apellido, double salario, int horasTrabajadas)
      : super(nombre, apellido, salario, horasTrabajadas);
}

void main() {
  var empleados = [
    EmpleadoConBonificaciones("Delvin", "Larez", 2000, 40),
    EmpleadoConBonificaciones("Anthony", "Chávez", 2500, 35),
    EmpleadoConBonificaciones("Luciano", "Otárola", 1800, 45),
  ];
  var bonificacionEmpleado1 = empleados[0].calcularBonificacion(empleados[0].salario);
  print("${empleados[0].nombre} ${empleados[0].apellido}: Bonificación \$${bonificacionEmpleado1.toStringAsFixed(2)}");

  var bonificacionEmpleado2 = empleados[1].calcularBonificacion(empleados[1].salario);
  print("${empleados[1].nombre} ${empleados[1].apellido}: Bonificación \$${bonificacionEmpleado2.toStringAsFixed(2)}");

  var bonificacionEmpleado3 = empleados[2].calcularBonificacion(empleados[2].salario);
  print("${empleados[2].nombre} ${empleados[2].apellido}: Bonificación \$${bonificacionEmpleado3.toStringAsFixed(2)}");
}
