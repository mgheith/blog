Given(/^I am on the Columbus State website$/) do
  @page = Cscc.new @browser #This code brings up an error here for unknown reasons. However, I'm hoping it's clear what my intentions where for this entire page
  @page.goto
end

When(/^I search for "csci-2994" in the search bar$/) do
  @page.enter_search
end

Then(/^it will display multiple results$/) do
  expect(@page.html).to include("About 50 results (0.14 seconds)") #I was attempting to find a way to validate wether or not the string had a number above 1, but I literally just do not know how to
end

Then(/^It will display "CSCI-2994 - CSCI Current Topics" as the first result$/) do
  expect(@page.html).to include("CSCI-2994 - CSCI Current Topics") #I was attempting to find something in the Element that labeled it as the first gathered result, but I could not find anything that resembled that
end

Given(/^I am on the CSCC website search result for "csci-2994"$/) do
  @page = Results.new @browser
end

When(/^I click on the "CSCI-2994 - CSCI Current Topics" course Title$/) do
  @page.click
end

Then(/^I am taken to the course description$/) do
  expect(@page.html).to include("Course Information:") 
end

Then(/^the Course description displays "none" for its prerequisites$/) do
  expect(@page.prerequisites).to eq("None")
end

Then(/^there will be a link under the text "Textbooks"$/) do
  expect(@page.textbooks).to be(True) #I may have gotten it wrong, but my attempt was to create a method that was wether or not "http://bookstore.cscc.edu" existed
end
