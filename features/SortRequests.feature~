Feature: Sort Performance Requests

Scenario: Sort by date and status
Given I am on the Authentication page
When I follow "Sign up"
Then I should be on the Sign Up page
When I fill in "Email" with "alliemart7@tamu.edu"
And I fill in "Password" with "howdyaggies"
And I fill in "Password confirmation" with "howdyaggies"
And I press "Sign up"
Then I should be on the wranglers_portal home page
When I follow "Authorized Users"
Then I should be on the View Requests page
When I follow "Start At"
Then I should see "James" before "Jill"
When I follow "Status"
Then I should see "Jill" before "James"
When I follow "Status"
Then I should see "James" before "Jill"
