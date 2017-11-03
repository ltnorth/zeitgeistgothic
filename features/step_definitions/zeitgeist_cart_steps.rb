Given(/^I am on the cart page$/) do
	@zeitgeist_site = ZeitgeistSite.new
  @zeitgeist_site.zeitgeist_cart_page.load
end
And(/^I have an empty basket$/) do
  @zeitgeist_site.zeitgeist_cart_page.get_return_to_homepage.visible?
end
When(/^I click 'return to shop'$/) do
  @zeitgeist_site.zeitgeist_cart_page.get_return_to_homepage.click
end
Then(/^I am redirected to the shop page$/) do
  expect(current_path).to eql('/shop/')
end