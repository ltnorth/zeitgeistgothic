Feature: Zeitgeist Shop Page

	Scenario: When a user clicks on the image of a product
		Given I am on the shop page
		When I click on an image on page one
		Then I am redirected to the correct page for the image I have clicked on

	Scenario: When a user clicks on the options button of a product
		Given I am on the shop page
		When I click on a button on page one
		Then I am redirected to the correct page for the button I have clicked on

	Scenario: When a user sorts the product order via the drop down menu
		Given I am on the shop page
		When I have selected the sorting method of my choosing from the dropdown menu on page one
		Then The page is sorted in accordance to my choice

	Scenario: When a user clicks on either page 2 or the next button
		Given I am on the shop page
		When I click on page two or next page arrow
		Then I am taken to the next page or page two

	Scenario: When a user clicks on the home link
		Given I am on the shop page
		When I click the home nav link
		Then I am returned to the websites home page