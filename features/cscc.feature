Feature: Searching for a class
	As a user
	I want to search for a specific class in the Columbus State Website
	So that I may be given essential information for joining

Scenario: Searching csci 2994 in the Columbus State website
	Given I am on the Columbus State website
	When I search for "csci-2994" in the search bar
	Then it will display multiple results
	Then It will display "CSCI-2994 - CSCI Current Topics" as the first result
	
Scenario: Displaying information on the "CSCI-2994 - CSCI Current Topics" course description
	Given I am on the CSCC website search result for "csci-2994"
	When I click on the "CSCI-2994 - CSCI Current Topics" course Title
	Then I am taken to the course description
	Then the Course description displays "none" for its prerequisites
	Then there will be a link under the text "Textbooks"