Given /^I am on the post submission page$/ do
  # navigate the browser to our create a post page
  @page = CreationPage.new @browser
  @page.goto
end

When /^I create a valid post$/ do
  @page.create_valid_post
end

Then /^my post is created$/ do
  expect(@page.html).to include("Submitted!")
end