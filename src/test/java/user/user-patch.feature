Feature: Patch users from Reqres
  Scenario: Patch a user record
    Given url "https://reqres.in" + "/api/users/2"
    And request {"name":"morpheus","job":"zionresident"}
    When method patch
    Then status 200
    And match $.job == 'zionresident'