Feature: Register records from Reqres
  Background:
    * url "https://reqres.in"
    * path "/api/register"

  Scenario: Post a register record
    Given request {"email":"eve.holt@reqres.in","password":"pistol"}
    When method post
    Then status 200
    And match $.id != 0

  Scenario: Post a wrong register record
    Given request {"email":"sydney@fife"}
    When method post
    Then status 400
    And match $.error contains 'Missing'