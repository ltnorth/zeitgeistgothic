Given(/^I am on shop page two$/) do
  @zeitgeist_site = ZeitgeistSite.new
  @zeitgeist_site.zeitgeist_shop_page_two.load
  @zeitgeist_site.zeitgeist_shop_page_two.displayed?
end

When(/^I click on page 1 or previous page arrow$/) do
  @zeitgeist_site.zeitgeist_shop_page_two.click_to_go_to_page_one
end

Then(/^I am taken to the previous page or page 1$/) do
  expect(current_url).to eql 'https://www.zeitgeistgothic.co.uk/shop/'
end

When(/^I can click the home nav link$/) do
  @zeitgeist_site.zeitgeist_shop_page_two.click_home_link_page_two
end

Then(/^I return to the websites home page$/) do
  expect(current_url).to eql 'https://www.zeitgeistgothic.co.uk/'
end

When(/^I click the shop nav link$/) do
  @zeitgeist_site.zeitgeist_shop_page_two.click_shop_link_page_two
end

Then(/^I am returned to shop page 1$/) do
  expect(current_url).to eql 'https://www.zeitgeistgothic.co.uk/shop/'
end