Feature: Zeitgeist Shop Page

	Scenario: As a user of the website
		Given I am on the shop page
		When I click on an image on page one
		Then I am redirected to the correct page for the image I have clicked on

		Given I am on the shop page
		When I click on an tag on page one
		Then I am redirected to the correct page for the tag I have clicked on

		Given I am on the shop page
		When I have clicked on the sorting dropdown on page one
		And I have selected the sorting method of my choosing
		Then The page is sorted in accordance to my choice

		Given I am on the shop page
		When I click on page two/next page arrow
		Then I am taken to the next page/page two

		Given I am on the shop page
		When I click the home nav link
		Then I am returned to the websites home page