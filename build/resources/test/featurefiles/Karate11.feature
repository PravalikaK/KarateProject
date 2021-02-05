Feature: karate test suite 11
  End to end api testing ( API chaining)

  @rest
  Scenario: Rest api test case1
    Given url "http://dummy.restapiexample.com/api/v1/create"
    And request {"name":"Warrior","salary":"123","age":"22"}
    When method POST
    Then status 200
    * print response
    * def id = response.data.id
    * print id


    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method GET
    Then status 200
    * print response


    #Given url "http://dummy.restapiexample.com/api/v1/update/" + id
    #And request {"name":"Warrior","salary":"123","age":"20"}
    #When method PUT
    #Then status 200
    #* print response

    Given url "http://dummy.restapiexample.com"
    And path "/api/v1/delete/" + id
    When method delete
    Then status 200
    * print response