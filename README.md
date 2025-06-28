# 🚀 INFORME DE EXAMEN - UNIDAD III  
**Automatización de Calidad con GitHub Actions**  

<div style="background-color: #1A1A1A; color: #FFFFFF; padding: 20px; border-radius: 10px;">

## 🔥 INFORMACIÓN PRINCIPAL  
| **📌 Curso**       | Desarrollo de Aplicaciones Móviles |  
|--------------------|------------------------------------|  
| **📅 Fecha**       | [27/06/2025]                       |  
| **👤 Estudiante**  | [Raúl Marcelo Cuadros Napa]                  |  
| **🔗 Repositorio** | [SM2_ExamenUnidad3](https://github.com/MarceloCuadros/SM2_ExamenUnidad3) |  

---

## 📸 CAPTURAS CLAVE  
![image](https://github.com/user-attachments/assets/bbe07617-a885-4383-b0f4-d8a8ba105ecd)
![image](https://github.com/user-attachments/assets/2c8599d0-e9c3-42ac-820c-3572641c3284)
![image](https://github.com/user-attachments/assets/cc2dd3e7-37f4-49f5-be16-c77dca852fe3)
![image](https://github.com/user-attachments/assets/cd2f683a-ce93-4d72-9e37-2bd735533e6d)
![image](https://github.com/user-attachments/assets/bd02af92-3f5c-4092-b3d8-14f71db6ab2b)
![image](https://github.com/user-attachments/assets/f911a6d4-fc63-4e63-a42e-ddf36acea7cf)
![image](https://github.com/user-attachments/assets/605e4328-71ab-46e0-8cd8-29619d1f51dc)

### EXPLICACION DE LO REALIZADO
Explicación de lo Realizado

1. Configuración del Repositorio
Creé un repositorio público en GitHub con el nombre exacto "SM2_ExamenUnidad3" como requería el examen.
Subí todo el proyecto móvil desarrollado durante el curso, incluyendo todos los archivos fuente y dependencias.
Establecí la estructura de carpetas exigida:
La carpeta .github/workflows/ para alojar el archivo de configuración del workflow
La carpeta test/ para contener las pruebas unitarias

2. Implementación del Workflow
Desarrollé el archivo quality-check.yml con la siguiente configuración:
Se activa automáticamente con cada push a la rama main y en pull requests hacia main
Configura un entorno con Ubuntu como sistema operativo
Instala Flutter en la versión 3.24.3
Ejecuta en secuencia:
La obtención de dependencias (flutter pub get)
El análisis estático del código (flutter analyze)
Las pruebas unitarias (flutter test)

3. Desarrollo de Pruebas Unitarias
Implementé 3 pruebas unitarias en el archivo main_test.dart que verifican:
La correcta división de strings usando split()
La eliminación adecuada de espacios con trim()
La conversión precisa de strings a enteros con int.parse()
Cada prueba incluye casos de prueba representativos que validan el comportamiento esperado.

4. Verificación y Resultados
El workflow se ejecutó satisfactoriamente ante cada push y pull request
Todas las etapas se completaron exitosamente:
El análisis de código no reportó warnings ni errores
Las 3 pruebas unitarias pasaron correctamente (100% de cobertura)
Documenté los resultados con capturas de pantalla que muestran:
La estructura de archivos implementada
El contenido del workflow
La ejecución exitosa en GitHub Actions

5. Documentación
Redacté este informe completo en el README.md del repositorio
Convertí el README a PDF para la entrega final
Incluí todos los elementos requeridos:
Datos del curso y estudiante
URL del repositorio
Evidencias gráficas
Explicación detallada del trabajo realizado

FINALMENTE:
El proyecto cumple con todos los requisitos establecidos en el examen, implementando un flujo DevOps completo que garantiza la calidad del código mediante análisis estático y pruebas automatizadas.
