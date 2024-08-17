# Proyecto creado para la prueba de Ingreso a la empresa Arkano
El presente repositorio contiene una solución de ETL automatizada utilizando Azure Data factory y despliegue de infraestructura mediante plantillas ARM.
## Estructura del proyecto
- adf/: Archivos Json con la información de Azure data factory
    - pipelines/: Canalizacion creada para la solución
    - datasets/: Conjuntos de datos creados para la solución
    - dataflows/: Flujos de datos creados dentro del proceso.
    - linkedServices/: Servicios vinculados
    - integrationRuntimes/: Tiempos de ejecución del proceso.    
- arm-templates/: Plantillas ARM para desplegar los recursos de Azure
- scripts/: Scripts para la creación de la Tabla y la consulta del punto 2(sentencia SQL que arroje el número de quejas para cada producto y subproducto para el año 2023 dividido por trimestre).

## Despliegue y Uso
Los pasos para el despliegue de la solución son:

1. Ingrese al portal de Azure.
2. Despliegue las plantillas ARM: Para esto copie el contenido de la plantilla ubucada en arm-templates/XXXX la cual se encuentra en formato Json y lo pega en el editor de plantillas de azure.
3. Ingrese SQL Database y ejecute el Script llamado  scripts/ConsumerComplaints.sql
4. Ingrese al recurso creado de Azure Datafactory llamado dfprarkano y luego integre el repositorio a Git Hub con el siguiente enlace: https://github.com/nestorjhovanyquimbay778/prarkano
5. Realice la verificación de los objetos importados (Canalizaciones, Conjuntos de datos, Flujos de datos)
6. Ejecute el fjulo de datos llamado
7. Ejecute en SQL Database el script llamado scripts/
