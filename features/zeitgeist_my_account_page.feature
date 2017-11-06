Feature: Zeitgeist My Account Page

	Scenario: I can log in to the account created for testing purposes. 
		Given I am on the my account page
		When I log in 
		Then I am can see the dashboard

	@logged_in
	Scenario: I can click on the orders link
		Given i can see the orders link
		When I click on the orders link
		Then I am forwarded to the orders page

	@logged_in
	Scenario: I can click on the download link
		Given i can see the download link
		When I click on the download link
		Then I am forwarded to the download page

	@logged_in
	Scenario: I can click on the address link
		Given i can see the address link
		When I click on the address link
		Then I am forwarded to the address page

	@logged_in
	Scenario: I can click on the account link
		Given i can see the account link
		When I click on the account link
		Then I am forwarded to the account page

	@logged_in
	Scenario: I can click on the logout link
		Given i can see the logout link
		When I click on the logout link
		Then I am forwarded to the log out page

	