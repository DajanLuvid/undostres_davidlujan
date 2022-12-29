Feature: Register login from Reqres
  Background:
    * url "https://reqres.in"
    * path "/api/login"

  Scenario: Post a login record
    Given request { "email":"eve.holt@reqres.in","password":"cityslicka"}
    When method post
    Then status 200
    And match $ != {"token": ""}

  Scenario: Post a wrong login record
    Given request {"email":"peter@klaven"}
    When method post
    Then status 400
    And match $.error contains 'Missing'