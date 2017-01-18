Feature: Users

@javascript
Scenario: I signed in successfully 
Given I am visiting /admin
And I wait for 10 seconds
Then I should see SB Admin
And I wait for 10 seconds




@javascript
Scenario: I can see all Users
Given I am visiting /admin/users
And I wait for 10 seconds
Then I should see All Users
When I click chec
Then I should see popup with true 
And I click Ok button 

