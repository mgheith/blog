Given(/^I am on the homepage$/) do
  @page = HomePage.new @browser
end

When(/^I view the homepage$/) do
  @page.goto 
end

Then(/^I will see my previous posts$/) do
  expect(@page.html).to include("Post 1")
end

When(/^I click on a post Title$/) do
  pending
end

Then(/^I will see the entire post$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I am on a post$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I see an entire post$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^It will display the author name$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^It will display the post title$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I will see a homepage link$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
