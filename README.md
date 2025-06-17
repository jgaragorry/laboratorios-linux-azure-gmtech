# laboratorios-linux-azure-gmtech

Recursos prácticos de laboratorio del curso **Linux + Azure** by GMTech.

---

## 📚 Contenido del repositorio

- `docs/` – Guía para docentes y estudiantes.
- `scripts/` – Scripts automatizados para desplegar laboratorios.
- `resources/` – Checklist del laboratorio en formato Excel.

---

## 🚀 Cómo usar este repositorio

1. Clona el repositorio en tu máquina local:
   ```bash
   git clone https://github.com/jgaragorry/laboratorios-linux-azure-gmtech.git
   cd laboratorios-linux-azure-gmtech/scripts


Ejecuta el script de laboratorio:

bash script_lab.sh

Se crearán recursos en un grupo de recursos específico, con etiquetas asociadas al docente y al proyecto.

✅ Requisitos previos
Cuenta activa en Azure (idealmente con créditos gratuitos).

Tener instalada y configurada la Azure CLI.

Acceso a Bash (Linux, WSL o Git Bash en Windows).

Conexión a internet y permisos para crear recursos en Azure.

🧑‍🏫 Orientado a
Estudiantes del curso Linux + Azure.

Docentes que deseen guiar prácticas con enfoque práctico.

Profesionales que buscan entrenar el uso básico de almacenamiento y automatización en la nube.

🏷 Etiquetado y orden
Todos los recursos creados incluirán:

Un grupo de recursos exclusivo para facilitar su eliminación posterior.

Etiquetas:

docente=gmtech

proyecto=laboratorio-linux-azure

📄 Licencia
Distribuido bajo licencia MIT.

---

Después, guarda el archivo y haz:

```bash
git add README.md
git commit -m "README completo añadido"
git push origin main