@item_in_basket

Feature: I am able to checkout successfully

	Scenario: I am able to fill in the checkout page

		Given I am on the checkout page
		When I fill in all the required fields
		Then I can move forward with a purchase

	Scenario: I am able to begin the process to create an account

		Given I am on the checkout page
		When I click the create account checkbox
		Then I can enter a password to create an account 

	Scenario: I am able to begin the process to add another address for delivery

		Given I am checking out
		When I click on the delivery address checkbox
		Then I can enter a delivery name