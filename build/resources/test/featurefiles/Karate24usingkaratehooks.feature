Feature: Karate Test suite 24
  Using Scenario and feature level test fixtur (karate hooks)

  Background: init
    * print "From background block"

    #* configure afterScenario =
   # """
    #function (){
    #karate.log("from after scenario")
    #}
    #"""
    * configure afterFeature =
    """
    function (){
    karate.log("from after feature")
    }
    """

  Scenario: Karate hooks test case1
    * print "From scenario block"
