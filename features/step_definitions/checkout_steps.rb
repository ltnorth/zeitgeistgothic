
Given(/^I am on the checkout page$/) do
  @zeitgeist_site = ZeitgeistSite.new
  @zeitgeist_site.zeitgeist_checkout_page.load
  @zeitgeist_site.zeitgeist_checkout_page.displayed?
end

When(/^I fill in all the required fields$/) do
	@zeitgeist_site.zeitgeist_checkout_page.enter_first_name('James')
	@zeitgeist_site.zeitgeist_checkout_page.enter_last_name("O'Neill")
	@zeitgeist_site.zeitgeist_checkout_page.enter_company_name("Zeitgeist Gothic")
	@zeitgeist_site.zeitgeist_checkout_page.enter_street_address('The New Huddersfield Hotel')
	@zeitgeist_site.zeitgeist_checkout_page.enter_apartment_number("Room 5")
	@zeitgeist_site.zeitgeist_checkout_page.enter_city('Huddersfield')
	@zeitgeist_site.zeitgeist_checkout_page.enter_state('West Yorkshire')
	@zeitgeist_site.zeitgeist_checkout_page.enter_postcode('HD1 1QT')
	@zeitgeist_site.zeitgeist_checkout_page.enter_phone('07578209391')
	@zeitgeist_site.zeitgeist_checkout_page.enter_email('james.oneill96@gmail.com')
	@zeitgeist_site.zeitgeist_checkout_page.click_create_account
	@zeitgeist_site.zeitgeist_checkout_page.click_create_account
	@zeitgeist_site.zeitgeist_checkout_page.click_delivery_address_checkbox
	@zeitgeist_site.zeitgeist_checkout_page.click_delivery_address_checkbox
	@zeitgeist_site.zeitgeist_checkout_page.enter_order_notes("memes = dreams")
	@zeitgeist_site.zeitgeist_checkout_page.paypal_click
end

Then(/^I can move forward with a purchase$/) do
	find('#paypalLogo')
  expect(current_url).to match(/www.paypal.com/)
end




#Given(/^I am on the checkout page$/) do
#  @zeitgeist_site = ZeitgeistSite.new
#  @zeitgeist_site.zeitgeist_checkout_page.load
#  @zeitgeist_site.zeitgeist_checkout_page.displayed?
#end
#
#When(/^I click the create account checkbox$/) do
#  @zeitgeist_site.zeitgeist_checkout_page.click_create_account
#end
#
#Then(/^I can enter a password to create an account$/) do
#  @zeitgeist_site.zeitgeist_checkout_page.enter_password('password')
#  expect(@zeitgeist_site.zeitgeist_checkout_page.password.value).to eql ('password')
#end