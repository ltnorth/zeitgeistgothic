
Given(/^I am on the checkout page$/) do
  @site = ZeitgeistSite.new
  @site.zeitgeist_checkout_page.load
  @site.zeitgeist_checkout_page.displayed?
end

When(/^I fill in all the required fields$/) do
	@site.zeitgeist_checkout_page.enter_first_name('James')
	@site.zeitgeist_checkout_page.enter_last_name("O'Neill")
	@site.zeitgeist_checkout_page.enter_company_name("Zeitgeist Gothic")
	@site.zeitgeist_checkout_page.click_country
	@site.zeitgeist_checkout_page.enter_country('United Kingdom')	
	@site.zeitgeist_checkout_page.enter_street_address('The New Huddersfield Hotel')
	@site.zeitgeist_checkout_page.enter_apartment_number("Room 5")
	@site.zeitgeist_checkout_page.enter_city('Huddersfield')
	@site.zeitgeist_checkout_page.enter_state('West Yorkshire')
	@site.zeitgeist_checkout_page.enter_postcode('HD1 1QT')
	@site.zeitgeist_checkout_page.enter_phone('07578209391')
	@site.zeitgeist_checkout_page.enter_email('james.oneill96@gmail.com')
	@site.zeitgeist_checkout_page.click_create_account
	@site.zeitgeist_checkout_page.password.displayed?
	@site.zeitgeist_checkout_page.click_delivery_address_checkbox
	@site.zeitgeist_checkout_page.delivery_name.displayed?
	@site.zeitgeist_checkout_page.click_delivery_address_checkbox
	@site.zeitgeist_checkout_page.enter_order_notes("memes = dreams")


end

Then(/^I can move forward with a purchase$/) do
  expect(check_url).to match(/www.paypal.com/)
end




#Given(/^I am on the checkout page$/) do
#  
#end
#When(/^I click the create account checkbox$/) do
#  
#end
#Then(/^I can enter a password and create an account$/) do
#  
#end