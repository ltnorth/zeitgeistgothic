Feature: Zeitgeist Shop Page Two

	Scenario: As a user of the website 
		Given I am on shop page two
		When I click on page 1 or previous page arrow
		Then I am taken to the previous page or page 1

		Given I am on shop page two
		When I can click the home nav link
		Then I return to the websites home page

		Given I am on shop page two
		When I click the shop nav link
		Then I am returned to shop page 1