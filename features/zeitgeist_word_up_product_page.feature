Feature: Zeitgeist Word Up Product Page

	Scenario: When a user selects size and quantity of the word up tee and adds it to the basket
		Given I am on the word up product page
		When I select a size of medium
		And I select a quantity
		And I click add to basket
		Then The shirt will appear in my basket
