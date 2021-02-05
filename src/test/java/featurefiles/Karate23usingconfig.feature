Feature: Karate Test suite 23
  Reading Global variables from karate config

  Scenario: Karate config test case
    Given url baseUrl
    And path listUsers
    When method get
    Then status 200
    * print response