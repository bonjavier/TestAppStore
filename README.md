# Ejercicio 2: Pruebas de API para Swagger Petstore

Este ejercicio consiste en implementar casos de prueba para varias funcionalidades de la API de Swagger Petstore. A continuación se detallan las funcionalidades y los pasos necesarios para ejecutar las pruebas.

## Funcionalidades a Probar

- **Consultar una orden de compra**
- **Buscar la orden de compra creada**
- **Verificar el inventario de ventas**
- **Eliminar una orden de compra**

## Preparación del Entorno

Para ejecutar las pruebas, asegúrese de tener configurado el entorno con las siguientes herramientas:

- **Herramienta de Pruebas**: Se utilizará Karate para escribir y ejecutar las pruebas de API.
- **Dependencias de Proyecto**: Asegúrese de tener las dependencias necesarias configuradas en su proyecto (Karate, Gradle/Maven, etc.).

## Configuración

Asegúrese de configurar correctamente el entorno de pruebas y tener acceso a la API de Swagger Petstore. Puede ajustar las configuraciones de entorno en el archivo de propiedades o directamente en el código de las pruebas.

## Ejecución de las Pruebas

Para ejecutar las pruebas, siga estos pasos:

1. **Clonar el Repositorio**: Clone este repositorio en su máquina local.

   ```bash
   git clone https://github.com/bonjavier/TestAppStore.git
   cd repo
## Configuración y Ejecución de Pruebas

### Configurar Variables de Entorno

Asegúrese de configurar las variables de entorno necesarias para la ejecución de las pruebas. Puede hacerlo en un archivo `karate-config.js` o mediante argumentos en la línea de comandos, para efectos de la prueba no se configuraron variables en el archivo `karate-config.js`.

### Ejecutar las Pruebas

Para ejecutar las pruebas, utilice Gradle (o Maven, según corresponda):
```bash
gradle clean test --tests RunnerTest
```

## Detalles de Implementación

### 📋 Consultar una orden de compra
Implementa un escenario que consulte detalles específicos de una orden de compra utilizando los endpoints proporcionados por la API de Swagger Petstore.

### 🔍 Buscar la orden de compra creada
Implementa un escenario que busque una orden de compra creada previamente en la API, verificando que los detalles sean correctos.

### 📊 Verificar el inventario de ventas
Asegura que el inventario de ventas devuelto por la API coincida con las expectativas y las cantidades disponibles.

### 🗑️ Eliminar una orden de compra
Implementa un escenario que elimine una orden de compra específica utilizando el endpoint correspondiente de la API.

## Reporte de Pruebas 📊

Después de ejecutar las pruebas, puede encontrar el reporte generado en la siguiente ruta:

[build/karate-reports/cucumber-html-reports/overview-features.html](build/karate-reports/cucumber-html-reports/overview-features.html)

Este reporte proporciona una visión detallada de los resultados de las pruebas realizadas.

### Autor: Javier David Duran Garcia 😎

## Pdt 🫣 
en caso de que falle la primera ejecución, por favor volver a compilar, ya que la API presenta un fallo en la ejecución del metodo Get para consultar una orden especifica. 
