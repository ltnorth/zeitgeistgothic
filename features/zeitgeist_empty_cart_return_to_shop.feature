Feature: Cart Page

	Scenario: I can return to the shop from the cart page
		Given I am on the cart page
		And I have an empty basket
    When I click 'return to shop'
    Then I am redirected to the shop page

  Scenario: Adjusting the quantity of the items in the cart should update the amount that it costs.
  	Given i adjust the quantity of the item in my basket
  	When I click the update button
  	Then My basket is updated succesfully