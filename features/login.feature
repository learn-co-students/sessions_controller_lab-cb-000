Feature: User can login
  Scenario: Login with my name
    Given I visit login page
    When I enter my "Jacob"
    And click on "login"
    Then I should see "Hi, Jacob"
    And see a link to logout

  Scenario: Successful logout
    Given I visit login page
    When I enter my "Jacob"
    And click on "login"
    When I click "logout"
    Then I should be on the "login" page

  Scenario: Not logged in
    When I visit the home page
    Then I should be on the "login" page
