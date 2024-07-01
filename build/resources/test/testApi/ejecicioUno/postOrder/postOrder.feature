Feature:Crear una orden de compra

  Scenario: Create order
    #Crear una orden de compra
    Given url "https://petstore.swagger.io/v2/store/order/"
    And request {"id": 1,"petId": 0,"quantity": 0,"shipDate": "2024-06-30T23:29:21.112Z","status": "placed","complete": true}
    When method post
    Then status 200
    * def response_idOrder = response.id
    * print '---el ID es---',response_idOrder
    * karate.set('orderId', response_idOrder)