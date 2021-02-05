Feature: karate test suite 10
  Validating JSON output of REST API with get method

  @rest
  Scenario: Rest api test case1
    Given url "http://dummy.restapiexample.com/api/v1/employees"
    When method get
    Then status 200
    * match responseType == "json"
    * match response.status == "success"
    * match response.status == "#string"
    * match response.data[0].employee_name == "Tiger Nixon"

  @rest
  Scenario: Rest api test case2
    Given url "http://dummy.restapiexample.com"
    And path "/api/v1/employees"
    When method get
    Then status 200
    * match responseType == "json"
    * match response.status == "success"
    * match response.status == "#string"
    * match response.data[0].employee_name == "Tiger Nixon"