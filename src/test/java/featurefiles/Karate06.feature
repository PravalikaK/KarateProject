Feature: karate test suite 6
  Using logical operator && in validation

  Scenario: Karate logical operator validation

    * def a = 10
    * def b = 30
    * assert a == 10 && b == 30
    * print "print assert"
