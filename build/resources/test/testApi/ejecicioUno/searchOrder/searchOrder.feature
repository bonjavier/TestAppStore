Feature:Consultar una orden de compra

  Scenario:  Search Order
    #Consultar la orden
    Given url "https://petstore.swagger.io/v2/store/order/1"
    When method get
    Then assert responseStatus == 200 || responseStatus == 404
    And if (responseStatus == 404) karate.log('La orden no se ha creado, intente crearla y luego consulte nuevamente')
    * print '--los datos son -------', response
