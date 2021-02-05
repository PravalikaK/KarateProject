Feature: karate test suite 8
  Validating with regular expression

  Scenario: Regular expression validation test case

    * def a = "10"
    * def b = "Karate"
    * def c = "Karate Framework work"

    * match a == "#regex [0-9]+"
    * match a == "#regex \\d+"
    * match b == "#regex \\w+"
    * match b == "#regex [A-Z][a-z]+"
    * match c == "#regex [A-Za-z\\s]+"
    * print "After datatype validation"
