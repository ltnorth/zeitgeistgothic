Feature: Zeitgeist navbar
	Scenario: As a user of the website, when on the homepage I want to click on the cart link in the navbar. Once clicked, I am taken to the cart page.
		Given I am on the home page
		When I click on the cart link in the navbar
		Then I am redirected to the cart page

	Scenario: As a user of the website, when on the homepage I want to click on the checkout link in the navbar. Once clicked, I am taken to the checkout cart page.
		Given I am on the home page
		When I click on the checkout link in the navbar
		Then I am redirected to the checkout cart page

	Scenario: As a user of the website, when on the homepage I want to click on the my account link in the navbar. Once clicked, I am taken to the my account page.
		Given I am on the home page
		When I click on the my account link in the navbar
		Then I am redirected to the my account page

	Scenario: As a user of the website, when on the homepage I want to click on the shop link in the navbar. Once clicked, I am taken to the shop page.
		Given I am on the home page
		When I click on the shop link in the navbar
		Then I am redirected to the shop page

	Scenario: As a user of the website, when on the shop page and I click on the home link in the navbar I am returned to the homepage.

		Given User is on the shop page
		When I click on the home link in the navbar
		Then I return back to the homepage

	Scenario: As a user of the website, when on the shop page and I click on the zeitgeist symbol, I am returned to the homepage.
		Given User is on the shop page
		When I click on the zeitgeist symbol
		Then I go back to the homepage