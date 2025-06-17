#!/bin/bash
# Laboratorio almacenamiento Azure – GMTech

RG="rg-almacenamiento-lab"
LOCATION="eastus"
STORAGE="almacenamientogmtech$RANDOM"
CONTAINER="contenedor-lab"
VM="vm-gmtech"
TAG="gmtech"

# Crear grupo de recursos
az group create --name $RG --location $LOCATION --tags proyecto=almacenamiento docente=gmtech

# Crear cuenta de almacenamiento con tier Hot
az storage account create --name $STORAGE --resource-group $RG --location $LOCATION \
  --sku Standard_LRS --access-tier Hot --tags proyecto=almacenamiento docente=gmtech

# Obtener la clave de acceso
KEY=$(az storage account keys list --account-name $STORAGE --resource-group $RG --query "[0].value" -o tsv)

# Crear contenedor
az storage container create --name $CONTAINER --account-name $STORAGE --account-key $KEY

# Subir archivo demo
echo "Hola desde Azure Blob!" > demo.txt
az storage blob upload --account-name $STORAGE --container-name $CONTAINER --name demo.txt \
  --file demo.txt --account-key $KEY

# Cambiar a tier Cool
az storage blob update --account-name $STORAGE --container-name $CONTAINER \
  --name demo.txt --tier Cool --account-key $KEY

# Generar SAS Token
EXPIRATION=$(date -u -d "+1 day" '+%Y-%m-%dT%H:%MZ')
SAS=$(az storage blob generate-sas --account-name $STORAGE --container-name $CONTAINER \
  --name demo.txt --permissions r --expiry $EXPIRATION --account-key $KEY -o tsv)
URL="https://$STORAGE.blob.core.windows.net/$CONTAINER/demo.txt?$SAS"

echo "🔗 Accede al blob usando SAS: $URL"
