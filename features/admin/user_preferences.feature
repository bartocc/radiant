Feature: Edit user preferences
  In order to keep my credentials secure and information up-to-date
  As a user I want to update my preferences
  
  Scenario Outline: Edit preferences
    Given I am logged in as "<username>"
    When I open my preferences
    And I fill in "E-mail Address" with "my-new-email@example.com"
    And I press "Save Changes"
    Then I should be on the preferences screen
    
    Examples:
      | username  |
      | admin     |
      | another   |
      | existing  |
      | designer  |
      | non_admin |
