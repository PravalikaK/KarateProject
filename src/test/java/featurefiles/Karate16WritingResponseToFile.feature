Feature: karate test suite 16
  Writing response to external file

  Scenario: Writing response to external file

    * def util = Java.type('misc.Util')
    Given url "https://reqres.in/api/users?page=2"
    When method get
    Then status 200
    * def res = get response
    #* def res = get response $.data[0].email
    * print res
    * util.writeToFile("result.json",res)

    Scenario: Reading Result file
      * def data = read("classpath:result.json")
      * print data

