Feature: Authorized Aggie Wrangler Personell can update a performance requests status

Scenario: Accept a request

Given I am on the View Requests page 
Then I should see "James"
When I follow "Show"
Then I should be on the Show Requests page
When I select "Accepted" from "Status"
And I press "Update Status"
Then I should be on the View Requests page
