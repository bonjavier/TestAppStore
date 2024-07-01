Feature:Consultar el inventario

  Scenario:  Consultar el inventario
    Given url "https://petstore.swagger.io/v2/store/inventory"
    When method get
    Then status 200
    * print '--los datos son -------',response
