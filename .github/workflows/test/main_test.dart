import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Pruebas unitarias básicas', () {
    test('Sumar dos números', () {
      int resultado = sumar(3, 4);
      expect(resultado, 7);
    });

    test('Validar email correcto', () {
      String email = 'test@correo.com';
      bool esValido = validarEmail(email);
      expect(esValido, true);
    });

    test('Prioridad del ticket en mayúscula', () {
      String prioridad = formatearPrioridad('alta');
      expect(prioridad, 'ALTA');
    });
  });
}

/// FUNCIONES A PROBAR

int sumar(int a, int b) => a + b;

bool validarEmail(String email) {
  // Expresión regular básica para validar un email
  final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return regex.hasMatch(email);
}

String formatearPrioridad(String prioridad) => prioridad.toUpperCase();
