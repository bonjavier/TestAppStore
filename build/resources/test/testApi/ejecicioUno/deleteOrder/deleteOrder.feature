Feature:Eliminar una orden de compra

  Scenario Outline: Delete order
    #Borrar la orden creada
    * call read('classpath:testApi/ejecicioUNO/postOrder/postOrder.feature')
    Given url "https://petstore.swagger.io/v2/store/order/" + <idOrder>
    When method delete
    Then status <status>
    Examples:
      | status | idOrder                 |
      | 200    | orderId                 |
      | 404    | '321312312321312312312' |