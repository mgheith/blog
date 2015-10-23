Feature: Read entire post
	As a reader 
	I want to read an entire post 
	So that I can get all the details

  Scenario: Displaying a valid post
    Given I am on the homepage
	When I view the homepage
	Then I will see my previous posts
	
  Scenario: Opening a valid post
	Given I am on the homepage	
	When I click on a post Title
	Then I will see the entire post
	
  Scenario: Seeing the authors name
	Given I am on a post
	When I see an entire post
	Then It will display the author name
	
  Scenario: Seeing the post title
	Given I am on a post
	When I see an entire post
	Then It will display the post title
	
  Scenario: Seeing a homepage link
	Given I am on a post
	When I see an entire post
	Then I will see a homepage link
  