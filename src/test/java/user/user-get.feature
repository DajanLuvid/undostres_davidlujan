Feature: Get users from Reqres
  Scenario: Get user list
    Given url "https://reqres.in" + "/api/users?page=2"
    When method get
    Then status 200
    And match $.page == 2

  Scenario: Get list resources
    Given url "https://reqres.in" + "/api/unknown"
    When method get
    Then status 200
    And match $.page == 1