# 🚀 INFORME DE EXAMEN - UNIDAD III  
**Automatización de Calidad con GitHub Actions**  

<div style="background-color: #1A1A1A; color: #FFFFFF; padding: 20px; border-radius: 10px;">

## 🔥 INFORMACIÓN PRINCIPAL  
| **📌 Curso**       | Desarrollo de Aplicaciones Móviles |  
|--------------------|------------------------------------|  
| **📅 Fecha**       | [DD/MM/AAAA]                       |  
| **👤 Estudiante**  | [Nombre Apellido]                  |  
| **🔗 Repositorio** | [SM2_ExamenUnidad3](https://github.com/[TU_USUARIO]/SM2_ExamenUnidad3) |  

---

## 📸 CAPTURAS CLAVE  

### 1️⃣ Estructura del Proyecto  
![Estructura](https://via.placeholder.com/800x400/000000/FFFFFF?text=.github%2Fworkflows%2F+%7C+test%2F+%7C+ARCHIVOS+CONFIGURADOS)  

### 2️⃣ Código del Workflow  
```yaml
name: 🔍 Quality Check
on: 
  push:
    branches: [main]
  pull_request:
    branches: [main]

jobs:
  quality:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: 🛠️ Flutter Setup
        uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.19.0'
      - name: 📦 Dependencies
        run: flutter pub get
      - name: 🔎 Code Analysis
        run: flutter analyze
      - name: 🧪 Run Tests
        run: flutter test
