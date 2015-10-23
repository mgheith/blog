Given /^I am on the Rubular Web Page$/ do
  @page = RegexPage.new @browser
  @page.goto
end

When /^I type "(.*)@(.*)\.(.*)" into the expression field$/ do
  @page.input
end

Then /^it will display the same text$/ do
  expect(@page.html).to include("(.*)@(.*)\.(.*)")
end

When /^I type "jdenen@cscc.edu" into the string field$/ do
  @page.input
end

Then /^It will the same text$/ do
  expect(text_area(:textarea, :id => "test")).to include("jdenen")
end

When /^I type "(.*)@(.*)\.(.*)" into the expression field and "jdenen@cscc.edu" into the string field$/ do
  @page.input
end

Then /^It will display "jdenen@cscc.edu" in the match-result field$/ do
  expect(match_string).to include ("jdenen@cscc.edu")
end

Then /^It will display "1. jdenen" in the match-groups field$/ do
  expect(@page.html).to include ("1. jdenen")
end

Then /^It will display "2. cscc" in the match-groups field in a single row$/ do
  expect(tr).to include ("2. cscc")
end

Then /^It will display "3. edu" in the match-groups field$/ do
  expect(tr).to include ("3. edu")
end

