Feature: Deleting posts
	As an author
	I want to be able to delete posts
	So that it would not show up in my lists of posts

Scenario: Revealing a 'delete' button
	Given I am on the list of posts
	When I enter a posts page
	Then there will be a link to delete the post
	
Scenario: Clicking on the 'delete'
	Given I am on the single post page
	When I click the 'delete' button
	Then the page will take me to the list of pages
	Then the deleted post will no longer appear on the list