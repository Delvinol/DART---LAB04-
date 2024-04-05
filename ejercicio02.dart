class Calculadora {
  late num n1;
  late num n2;

  Calculadora(this.n1, this.n2);

  void suma() {
    print("La suma es: ${n1 + n2}");
  }

  void resta() {
    print("La resta es: ${n1 - n2}");
  }

  void multiplicacion() {
    print("La multiplicación es: ${n1 * n2}");
  }

  void division() {
    if (n2 != 0) {
      print("La división es: ${n1 / n2}");
    } else {
      print("No se puede dividir entre cero.");
    }
  }
}

mixin OperacionesAdicionales {
  num potencia(num base, num exponente) {
    num resultado = 1;
    for (var i = 0; i < exponente; i++) {
      resultado *= base;
    }
    return resultado;
  }
}

mixin OperacionesAvanzadas {
  num raizCuadrada(num numero) {
    if (numero >= 0) {
      num estimado = numero / 2;
      num precision = 0.0001;
      while ((estimado * estimado - numero).abs() > precision) {
        estimado = (estimado + numero / estimado) / 2;
      }
      return estimado;
    } else {
      throw ArgumentError(
          "No se puede calcular la raíz cuadrada de un número negativo.");
    }
  }
}

class CalculadoraAvanzada extends Calculadora
    with OperacionesAdicionales, OperacionesAvanzadas {
  CalculadoraAvanzada(num n1, num n2) : super(n1, n2);
}

void main() {
  var calculadora = CalculadoraAvanzada(9, 3);

  // Operaciones basicas
  calculadora.suma();
  calculadora.resta();
  calculadora.multiplicacion();
  calculadora.division();

// Operaciones con mixin
  print("La potencia de 2 elevado a 3 es: ${calculadora.potencia(2, 3)}");
  print("La raíz cuadrada de 25 es: ${calculadora.raizCuadrada(25)}");
}
