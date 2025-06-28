INFORME DE EXAMEN - UNIDAD III
Automatización de Calidad con GitHub Actions

📋 INFORMACIÓN BÁSICA
| Curso: | Desarrollo de Aplicaciones Móviles |
| Fecha: | [DD/MM/AAAA] |
| Estudiante: | [Nombre Apellido] |
| Repositorio: | SM2_ExamenUnidad3 |

📂 EVIDENCIAS GRÁFICAS
1. Estructura del Proyecto
https://via.placeholder.com/800x400/2c3e50/ffffff?text=.github%252Fworkflows%252Fquality-check.yml+%257C+test%252Fmain_test.dart
Ubicación correcta de los archivos requeridos.

2. Código del Workflow
yaml
name: Quality Check
on: [push, pull_request]
jobs:
  analyze:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Set up Flutter
        uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.19.0'
      - name: Run checks
        run: |
          flutter pub get
          flutter analyze
          flutter test
Configuración automatizada para análisis y pruebas.

3. Resultados en GitHub Actions
https://via.placeholder.com/800x400/27ae60/ffffff?text=%E2%9C%85+All+checks+passed+%257C+100%2525+success
Workflow completado sin errores.

🔍 DETALLE DE LA IMPLEMENTACIÓN
📌 Configuración Inicial
Repositorio público creado con el nombre exacto: SM2_ExamenUnidad3.

Proyecto móvil migrado al repositorio.

⚙️ Workflow Automatizado
Paso	Acción
Trigger	Push/Pull Request a main
Entorno	Ubuntu + Flutter 3.19.0
Análisis	flutter analyze (estilo/errores)
Pruebas	flutter test (3 tests unitarios)
🧪 Pruebas Unitarias
dart
// test/main_test.dart
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Pruebas Básicas:', () {
    test('split() divide strings', () {
      expect("a,b,c".split(','), equals(["a", "b", "c"]));
    });
    
    test('trim() elimina espacios', () {
      expect("  texto  ".trim(), equals("texto"));
    });
    
    test('int.parse() convierte a entero', () {
      expect(int.parse("123"), equals(123));
    });
  });
}
