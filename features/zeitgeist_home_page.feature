Feature: Zeitgeist Home Page

  Scenario: I want to see details of a listed best seller by clicking the image of the product
    Given I am on the homepage
    When I click on the image of a best seller product
    Then I am redirected to the product page for that product

  Scenario: I want to either see details of a best seller by clicking the button under the image or add a phone case straight to the basket
    Given I am on the homepage
    When I click the button under the product image
    Then I am either redirected to the item's product page or it is added straight to my basket if appropriate
	
	Scenario: When a user clicks an image in the new in section of the home page
		Given I am on the homepage
		When I click on the image under the new in heading
		Then I am redirected to the correct page for the skully tee grey image I have clicked on

	Scenario: When a user clicks the options tab in the new in section of the home page
		Given I am on the homepage
		When I click on the select options button under the new in heading
		Then I am redirected to the correct page for the skully tee grey via the options I have clicked on

  Scenario: Checking Links for "Shop by Catagory"
    Given I am on the homepage
    When I click on and of the images under the headings
    Then I am redirected to the corresponding page