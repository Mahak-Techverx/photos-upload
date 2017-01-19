 Feature: Posts  

 @javascript
 Scenario: I signed in successfully 
 Given I am visiting /admin
 Then I should see SB Admin
 And I wait for 10 seconds




 @javascript
 Scenario: I can see all Posts
 Given I am visiting /admin/posts
 Then I should see All Posts

 @javascript
 Scenario: I can create posts
 Given I am visiting /admin/posts/new
 Then I should see Posts
 When I fill in "admin_post_title" with "My Post"  
 When I fill in "admin_post_description" with "my new post"
 And I attach the file admin_post_avatar
 And I wait for 10 seconds
 And I press Submit button
 And I wait for 10 seconds
 Then I should see Post was successfully created.

 @javascript
 Scenario: I can Delete Post
 Given I am visiting /admin/posts
 Then I should see All Posts
 When I click the Delete link
 Then I see an alert "Are you sure?"
 And I wait for 10 seconds
 Then I should see Post was successfully destroyed

 @javascript
 Scenario: I can Edit Post
 Given I am visiting /admin/posts
 Then I should see All Posts
 When I click the Edit link
 Then I should see Posts
 When I fill in "admin_post_title" with "My Post Edit"  
 When I fill in "admin_post_description" with "my edited post"
 And I attach the file admin_post_avatar
 And I wait for 10 seconds
 When user clicks Submit button
 And I wait for 10 seconds
 Then I should see Post was successfully updated









