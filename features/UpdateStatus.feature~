Feature: Authorized Aggie Wrangler Personell can update a performance requests status

Scenario: Accept a request
Given I am on the Authentication page
When I follow "Sign up"
Then I should be on the Sign Up page
When I fill in "Email" with "alliemart7@tamu.edu"
And I fill in "Password" with "howdyaggies"
And I fill in "Password confirmation" with "howdyaggies"
And I press "Sign up"
Then I should be on the wranglers_portal home page
When I follow "Authorized Users"
And I should be on the View Requests page
Then I should see "James"
When I follow "View" from "James"
Then I should see "Status"
When I select "Accepted" from "Status"
And I press "Update Status"
Then I should be on the View Requests page
