Feature: CallingFeature Suite
  Calling feature

  @rest
  Scenario: Calling feature test case 1
    * def result = call read("Calledfeature.feature")
    * print result
    * match result.response.string._ == "104"