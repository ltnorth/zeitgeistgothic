Given(/^I am on the my account page$/) do
  @zeitgeist_site = ZeitgeistSite.new
  @zeitgeist_site.zeitgeist_my_account_page.load
  
end
 
When(/^I log in$/) do
  @zeitgeist_site.zeitgeist_my_account_page.fill_in_username(ENV['ZEITGEIST_USERNAME'])
  @zeitgeist_site.zeitgeist_my_account_page.fill_in_password(ENV['ZEITGEIST_PASSWORD'])
  @zeitgeist_site.zeitgeist_my_account_page.click_login_button
end

Then(/^I am can see the dashboard$/) do
  expect(@zeitgeist_site.zeitgeist_my_account_page.signed_in?).to be true
end


Given(/^i can see the orders link$/) do
  expect(@zeitgeist_site.zeitgeist_my_account_page.get_orders_link.visible?).to be true
end

When(/^I click on the orders link$/) do
  @zeitgeist_site.zeitgeist_my_account_page.get_orders_link.click
end

Then(/^I am forwarded to the orders page$/) do
  expect(current_path).to eql('/my-account/orders/')
end
Given(/^i can see the download link$/) do
  expect(@zeitgeist_site.zeitgeist_my_account_page.get_downloads_link.visible?).to be true  
end

When(/^I click on the download link$/) do
  @zeitgeist_site.zeitgeist_my_account_page.get_downloads_link.click
end

Then(/^I am forwarded to the download page$/) do
  expect(current_path).to eql('/my-account/downloads/')
end
Given(/^i can see the address link$/) do
  expect(@zeitgeist_site.zeitgeist_my_account_page.get_address_link.visible?).to be true  
end

When(/^I click on the address link$/) do
  @zeitgeist_site.zeitgeist_my_account_page.get_address_link.click
end

Then(/^I am forwarded to the address page$/) do
  expect(current_path).to eql('/my-account/edit-address/')
end
Given(/^i can see the account link$/) do
  expect(@zeitgeist_site.zeitgeist_my_account_page.get_account_link.visible?).to be true  
end

When(/^I click on the account link$/) do
  @zeitgeist_site.zeitgeist_my_account_page.get_account_link.click
end

Then(/^I am forwarded to the account page$/) do
  expect(current_path).to eql('/my-account/edit-account/')
end
Given(/^i can see the logout link$/) do
  expect(@zeitgeist_site.zeitgeist_my_account_page.get_logout_link.visible?).to be true  
end

When(/^I click on the logout link$/) do
  @zeitgeist_site.zeitgeist_my_account_page.get_logout_link.click
end

Then(/^I am forwarded to the log out page$/) do
  expect(current_path).to eql('/my-account/customer-logout/')
end
