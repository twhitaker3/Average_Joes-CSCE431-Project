Feature: User can manually make a performance request

Scenario: Add a request
Given I am on the wranglers_portal home page
When I follow "Submit New Performance Request"
Then I should be on the Create New Request page
When I fill in "First Name" with "James"
And I fill in "Last Name" with "Jetton"
And I fill in "Email" with "jimmyt.jetton@hotmail.com"
And I fill in "Organization" with "Average Joes"
#And I select "March" "31" "2015" as the "Date" date
And I fill in "Location" with "HRBB"
And I fill in "Why Aggie Wranglers?" with "Aggie Wranglers are awesome!"
And I press "Submit"
Then I should be on the wranglers_portal home page

Scenario: Add incomplete request
Given I am on the Create New Request page
When I fill in "First Name" with "Johny"
And I fill in "Last Name" with "Depp"
And I fill in "Why Aggie Wranglers?" with "Incomplete request"
And I press "Submit"
Then I should be on the form Error page
And the "First Name" field should contain "Johny"
And the "Last Name" field should contain "Depp"
And the "Why Aggie Wranglers?" field should contain "Incomplete request"
When I fill in "Email" with "depp@richguy.com"
#need to figure out how to write step definition for datetime
And I fill in "Location" with "Hollywood"
And I press "Submit"
Then I should be on the wranglers_portal home page



