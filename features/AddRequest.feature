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
And I should see "James"

