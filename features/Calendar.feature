Feature: View requests in Calendar format

Scenario: View calendar
Given I am on the Sign Up page
When I fill in "Email" with "alliemart7@tamu.edu"
And I fill in "Password" with "howdyaggies"
And I fill in "Password confirmation" with "howdyaggies"
And I press "Sign up"
Then I should be on the wranglers_portal home page
And  I follow "Authorized Users"
Then I should be on the View Requests page 
When I follow "Calendar View"
Then I should be on the Calendar page

