Feature:Consultar una orden de compra creada

  Scenario Outline:  Search Order
    #Consultar la orden creada
    * call read('classpath:testApi/ejecicioUNO/postOrder/postOrder.feature')
    Given url "https://petstore.swagger.io/v2/store/order/" + <idOrder>
    When method get
    Then status <status>
    * print '--los datos son -------',response
    Examples:
      | status | idOrder                 |
      | 200    | orderId                 |
      | 404    | '321312312321312312312' |