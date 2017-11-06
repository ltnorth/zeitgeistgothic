Given(/^I am on the home page$/) do
	@zeitgeist_site = ZeitgeistSite.new
	@zeitgeist_site.zeitgeist_home_page.load
	@zeitgeist_site.zeitgeist_home_page.displayed?
end

When(/^I click on the cart link in the navbar$/) do
	@zeitgeist_site.zeitgeist_home_page.nav.click_cart_nav
end

Then(/^I am redirected to the cart page$/) do
	expect(current_path).to eql('/cart/')
	@zeitgeist_site.zeitgeist_cart_page.displayed?
end

When(/^I click on the checkout link in the navbar$/) do
	@zeitgeist_site.zeitgeist_home_page.nav.click_checkout_nav
end

Then(/^I am redirected to the checkout cart page$/) do
	expect(current_path).to eql('/cart/')
	@zeitgeist_site.zeitgeist_checkout_page.displayed?
end

When(/^I click on the my account link in the navbar$/) do
	@zeitgeist_site.zeitgeist_home_page.nav.click_my_account_nav
end

Then(/^I am redirected to the my account page$/) do
	expect(current_path).to eql('/my-account/')
	@zeitgeist_site.zeitgeist_my_account_page.displayed?
end

When(/^I click on the shop link in the navbar$/) do
	@zeitgeist_site.zeitgeist_home_page.nav.click_shop_nav
end

Then(/^I am taken to the shop page$/) do
	expect(current_path).to eql('/shop/')
	@zeitgeist_site.zeitgeist_shop_page.displayed?
end

Given(/^User is on the shop page$/) do
	@zeitgeist_site = ZeitgeistSite.new
	@zeitgeist_site.zeitgeist_shop_page.load
	@zeitgeist_site.zeitgeist_shop_page.displayed?
end

When(/^I click on the home link in the navbar$/) do
	@zeitgeist_site.zeitgeist_shop_page.nav.click_home_nav
end

Then(/^I return back to the homepage$/) do
	expect(current_url).to eql('https://www.zeitgeistgothic.co.uk/')
	@zeitgeist_site.zeitgeist_home_page.displayed?
end

When(/^I click on the zeitgeist symbol$/) do
	@zeitgeist_site.zeitgeist_shop_page.nav.click_site_logo
end

Then(/^I go back to the homepage$/) do
	expect(current_url).to eql('https://www.zeitgeistgothic.co.uk/')
	@zeitgeist_site.zeitgeist_home_page.displayed?
end

