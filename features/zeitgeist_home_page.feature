Feature: Zeitgeist Home Page
	
	Scenario: When a user clicks an image in the new in section of the home page
		Given I am on the homepage
		When I click on the image under the new in heading
		Then I am redirected to the correct page for the skully tee grey image I have clicked on

	Scenario: When a user clicks the options tab in the new in section of the home page
		Given I am on the homepage
		When I click on the select options button under the new in heading
		Then I am redirected to the correct page for the skully tee grey via the options I have clicked on