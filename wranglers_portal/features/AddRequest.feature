Feature: User can manually make a performance request

Scenario: Add a request
  Given I am on the wranglers_portal home page
  When I follow "Add Performance Request"
  Then I should be on the Create New Request page
  When I fill in "Name" with "James Jetton"
  And I fill in "Email" with "jimmyt.jetton@hotmail.com"
  And I fill in "Class Of" with "2016"
  And I fill in "Major" with "Computer Science"
  And I fill in "Why Aggie Wranglers?" with "Aggie Wranglers are awesome!"
  And I press "Save Changes"
  Then I should be on the wranglers_portal home page
  And I should see "James Jetton"

