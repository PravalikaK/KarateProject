Feature: karate test suite 7
  Validating data types of a variable

  Scenario: Data Type validation test case

    * def a = 10
    * def b = "karate"
    * def c = true
    * match a == "#number"
    * match b == "#string"
    * match c == "#boolean"
    * print "After datatype validation"
