## ☁️ Opción recomendada: Azure Cloud Shell

Puedes ejecutar este laboratorio directamente desde el navegador, sin instalar nada:

1. Ve a 👉 [https://shell.azure.com](https://shell.azure.com)
2. Asegúrate de elegir **Bash**.
3. Clona el repositorio:
   ```bash
   git clone https://github.com/jgaragorry/laboratorios-linux-azure-gmtech.git
   cd laboratorios-linux-azure-gmtech/scripts
4. Ejecuta el Script
   ```bash
    bash script_lab.sh

## Observacion

⚠️ Se creará un grupo de recursos en tu suscripción. No olvides eliminarlo cuando termines:

   ```bash
   az group delete --name grupo-gmtech-lab --yes --no-wait

🧹 Eliminación de recursos
Cuando termines el laboratorio, elimina todos los recursos ejecutando:
```bash
az group delete --name grupo-gmtech-lab --yes --no-wait

## Esto eliminará el grupo de recursos completo y todos sus contenidos.

📌 Requisitos previos
Cuenta activa de Azure.

Conexión a internet.

Permisos para crear recursos en tu suscripción.

🧑‍🎓 Ideal para
Estudiantes de cursos introductorios de Linux + Azure.

Profesionales que están comenzando con la CLI de Azure.

```bash

---

### 📄 `0-INTRODUCCION.md`

```markdown
# 👋 Bienvenida al Laboratorio Linux + Azure

Este laboratorio está diseñado para que aprendas los conceptos clave de almacenamiento en la nube con Azure, usando la línea de comandos (CLI).

---

## 🎯 Objetivos

- Familiarizarte con tipos de almacenamiento (Hot, Cool, Archive).
- Desplegar recursos de forma automatizada con Azure CLI.
- Aplicar buenas prácticas con etiquetas y grupos de recursos.
- Usar SAS Tokens para compartir archivos de forma segura.
- Simular recuperación de datos con herramientas nativas de Azure.

---

## 📚 Contenido del laboratorio

- Script automatizado que crea y gestiona recursos.
- Checklists de validación de recursos.
- Guía rápida de comandos usados.
- Archivos de apoyo y documentación.

---

## 🛠 Qué se necesita

- Cuenta de Azure (puede ser con créditos gratuitos).
- Azure CLI disponible (o usar Cloud Shell).
- Acceso a Bash (Linux, macOS, Git Bash en Windows o WSL).

---

## 🧑‍🏫 ¿A quién está dirigido?

- Estudiantes de cursos técnicos.
- Docentes que imparten clases prácticas de Linux y Cloud.
- Profesionales en transición a roles Cloud o DevOps.

---

## 📌 Recomendación

Al finalizar el laboratorio, elimina todos los recursos creados para evitar costos innecesarios:
 ```bash
   az group delete --name grupo-gmtech-lab --yes --no-wait

## ¡Éxito con tu aprendizaje!

---

### 📌 ¿Cómo subirlos a tu repo?

1. Copia el contenido de cada archivo en un editor de texto y guárdalos como:
 

   - `README_cloudshell.md`
   - `0-INTRODUCCION.md`

2. Abre tu terminal en la carpeta del repositorio y ejecuta:


   git add README_cloudshell.md 0-INTRODUCCION.md
   git commit -m "Archivos de bienvenida y uso en Cloud Shell añadidos"
   git push origin main
