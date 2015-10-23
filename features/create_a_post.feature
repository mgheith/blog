Feature: Create a Post
  As an author
  I want to creat a blog post
  So that i can share my knowledge with the world

  Scenario: Creating a valid post
	Given I am on the post submission page
	When I create a valid post
	Then my post is created