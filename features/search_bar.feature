Feature: Search Bar

	Background:
		Given I am on the Homepage
		And The search bar is displayed 

	Scenario: By entering a product name in the search bar i will be forwarded to a page with the results
		Given I input a relevant product description in the search bar
		When I hit Enter
		Then I am redirected to the page with the product displayed on it

	Scenario: By entering a String in the search bar i will be forwarded to a page with the results that match that string
		Given I input a string
		When I hit Enter
		Then I am redirected to the results page with the product displayed on it

	Scenario: By entering a JavaScriptTag in the search bar it will error correctly
		Given I input a JavaScriptTag
		When I hit Enter
		Then I am redirected to an error page

	Scenario: By entering a String in the search bar i will be forwarded to a page with the results that match that string
		Given I input a string
		When I hit Enter
		Then I am redirected to the results page with the product displayed on it