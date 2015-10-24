Feature: Test expressions with Rubular
	As a coder
	I want to test expression I create for ruby with Rubular
	So that I may easily know what my expressions do

Scenario: Typing an expression into the Rubular webpage
	Given I am on the Rubular Web Page
	When I type "(.*)@(.*)\.(.*)" into the expression field
	Then it will display the same text
	When I type "jdenen@cscc.edu" into the string field
	Then It will the same text

Scenario: Testing an epression with Rubular
	When I type "(.*)@(.*)\.(.*)" into the expression field and "jdenen@cscc.edu" into the string field
	Then It will display "jdenen@cscc.edu" in the match-result field
	Then It will display "1. jdenen" in the match-groups field
	Then It will display "2. cscc" in the match-groups field in a single row
	Then It will display "3. edu" in the match-groups field