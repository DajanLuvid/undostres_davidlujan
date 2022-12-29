Feature: Create users from Reqres

  Background:
    * request {"name":"#(name)","job":"#(job)"}

  Scenario Outline: Post a user record
    Given url "https://reqres.in" + "/api/users"
    When method post
    Then status 201
  Examples:
    | name      | job |
    | morpheus  | leader |
    | beto      | doctor |