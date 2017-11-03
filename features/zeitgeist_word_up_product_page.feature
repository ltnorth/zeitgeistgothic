Feature: Zeitgeist Word Up Product Page

	Scenario: As a user of the website
		Given I am on the word up product page
		When I select a size of medium
		And I select a quantity
		And I click add to basket
		Then The shirt will appear in my basket
