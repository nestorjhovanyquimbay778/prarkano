# Proyecto creado para la prueba de Ingreso a la empresa Arkano
El presente repositorio contiene una solución de ETL automatizada utilizando Azure Data factory y despliegue de infraestructura mediante plantillas ARM.
## Estructura del proyecto
- adf/: Archivos Json con la información de Azure data factory
    - pipeline/: Canalizacion creada para la solución
    - dataset/: Conjuntos de datos creados para la solución
    - dataflow/: Flujos de datos creados dentro del proceso.
    - linkedService/: Servicios vinculados
    - factory/: 
- arm-templates/: Plantillas ARM para desplegar los recursos de Azure
- scripts/: Scripts para la creación de la Tabla y la consulta del punto 2(sentencia SQL que arroje el número de quejas para cada producto y subproducto para el año 2023 dividido por trimestre).
- Arquitectura Azure.png: Imagén con la arquitectura de la solución de Azure.
## Despliegue y Uso
Los pasos para el despliegue de la solución son:

1. Ingrese al portal de Azure.
2. Modifique los parametros del archivo llamado parameters ubicado en  arm-templates/parameters.json según el ambiente de Azure al cual se va a realizar el despliegue.
3. Despliegue las plantillas ARM: Para esto copie el contenido de la plantilla ubucada en arm-templates/template la cual se encuentra en formato Json y lo pega en el editor de plantillas de azure.
4. Ingrese SQL Database y ejecute el Script llamado  scripts/ConsumerComplaints.sql
5. Ajuste el archivo llamado publish_config.json que se encuentra en la ruta /adf con la configuración del nuevo entorno
6. Ingrese al recurso creado de Azure Datafactory llamado dfprarkano y luego integre el repositorio a Git Hub con el siguiente enlace: https://github.com/nestorjhovanyquimbay778/prarkano
7. Realice la verificación de los objetos importados (Canalizaciones, Conjuntos de datos, Flujos de datos)
8. Ejecute el fjulo de datos llamado
9. Ejecute en SQL Database el script llamado scripts/Quejas_producto_subproducto2023.sql
