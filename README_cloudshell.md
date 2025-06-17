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
