Feature: Put users from Reqres
  Scenario: Put a user record
    Given url "https://reqres.in" + "/api/users/2"
    And request {"name":"morpheus","job":"zionresident"}
    When method put
    Then status 200
    And match $.job == 'zionresident'