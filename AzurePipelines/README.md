# Prueba practica Devsu

Este repositorio y apartado solo tiene como fin dar solución a la prueba practica generada por Devsu

## Getting Started

El repositorio de Azure DevOps se encuentra publico por lo que podrán ingresar a revisar y/o validar la información compartida en el archivo PDF enviado.

### Repositorio Azure DevOps

https://dev.azure.com/amiguel2150/_git/DevsuTest

### Service Connection

https://dev.azure.com/amiguel2150/DevsuTest/_settings/adminservices

## Pipelines

https://dev.azure.com/amiguel2150/DevsuTest/_build

### Pasos a seguir de los pipelines

Actualmente se estableció dos pipelines, el primero para general el artefacto del proyecto y el segundo el deploy de los puntos correspondientes a la prueba; todo esto con el fin de mantener buenas prácticas en el mismo.

* Artifact: Build-general https://dev.azure.com/amiguel2150/DevsuTest/_apps/hub/ms.vss-build-web.ci-designer-hub?pipelineId=1&branch=main

* Deploy: Deploy-pipeline https://dev.azure.com/amiguel2150/DevsuTest/_apps/hub/ms.vss-build-web.ci-designer-hub?pipelineId=2&branch=main

Tener presente que el pipeline "Deploy-Pipeline" se realizo por medio de yml template, por lo que solo se cargó el stage.yml para este redirigir los demas template a lo largo del ejercicio (podran visualizar todo el contenido en el repositorio)

#### Resultados de las ejecuciones del pipeline

* Artifact: Build-general https://dev.azure.com/amiguel2150/DevsuTest/_build/results?buildId=74&view=logs&j=c905858b-ddaa-5454-b79b-a4012743545d

* Deploy: Deploy-pipeline https://dev.azure.com/amiguel2150/DevsuTest/_build/results?buildId=78&view=results

* SonarCloud: https://sonarcloud.io/summary/new_code?id=amiguel2150_DevsuTest

* Git: https://github.com/amiguel215/DevsuTest