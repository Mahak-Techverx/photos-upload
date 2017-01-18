Given "I am on $path" do |path|
   visit path
end

Given "I am visiting $path" do |path|
  visit path
  fill_in("user_email".gsub(' ', ' '), :with => "admin@gmail.com")
  fill_in("user_password".gsub(' ', ' '), :with => "123123")
  find_button("Log in", :exact => true).click
end

Then("I should see $content") do |content|
  page.should have_content content
end


When("I click the $text button") do |text|
  
    find_button(text, :exact => true).click
end

When("I press $text1 button within $class1") do |text1,class1|
        within(class1) do
        	find_button(text1, :exact => true).click
    	end
end


When("I press $text1 button") do |text1|
    within(".intl-houses-table") do
      	find_button(text1, :exact => true).click
    end
end


Then ("I should see a popup with the $text") do|text|
 page.check(text)
end
 



When("I click the $text link") do |text|
    click_link(text, match: :first)
end
When("I tap the $text link") do |text|
    click_link(text)
end

When("I click the $text checkbox") do |text|
    page.check(text, match: :first)
end



When /^select in "([^\"]*)" with "([^\"]*)"$/ do |dropdown, selected_text|
  select(selected_text, :from => dropdown)
end

When /^I wait for (\d+) seconds?$/ do |secs|
  sleep secs.to_i
end

When /^I fill in "([^\"]*)" with "([^\"]*)"$/ do |field, value|
  fill_in(field.gsub(' ', ' '), :with => value)
end
Then("there not see $content") do |content|
   page.should_not have_content(content)
end


When ("I attach the file $file") do |file| 
  page.attach_file(file, Rails.root + 'app/assets/images/logo.png')
end
# When /^I sign in via Facebook$/ do
#   facebook_window = window_opened_by do
#     click_link(edit, match: :first)
#   end
#     within_window(facebook_window) do
    
#     page.should_not have_content(Program Details)
#   end
# end