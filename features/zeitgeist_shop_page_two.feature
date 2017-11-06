Feature: Zeitgeist Shop Page Two

	Scenario: When a user navigates from the shop page 2 to page 1 via the arrow or page 1 button
		Given I am on shop page two
		When I click on page 1 or previous page arrow
		Then I am taken to the previous page or page 1

	Scenario: When a user naviages back to shop page 1 from the nav link
		Given I am on shop page two
		When I can click the home nav link
		Then I return to the websites home page

	Scenario: When a user naviages back to the home page from the nav link
		Given I am on shop page two
		When I click the shop nav link
		Then I am returned to shop page 1