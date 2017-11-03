Feature: I can return to the shop from the cart page

	Scenario: I have an empty cart
		Given I am on the cart page
		And I have an empty basket
    When I click 'return to shop'
    Then I am redirected to the shop page