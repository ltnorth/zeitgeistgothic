@item_in_basket

Feature: I am able to checkout successfully

	Scenario: I am able to fill in the checkout page and create an account

		Given I am on the checkout page
		When I fill in all the required fields
		Then I can move forward with a purchase

		Given I am on the checkout page
		When I click the create account checkbox
		Then I can enter a password to create an account 