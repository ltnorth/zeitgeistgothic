Given(/^I have an item in my basket$/) do
  @zeitgeist_site.zeitgeist_cart_page.red_cross.visible?
end
When(/^I click on the name of an item in my basket$/) do
  @zeitgeist_site.zeitgeist_cart_page.click_on_product_name_link
end
Then(/^I am redirected to that item's product page$/) do
  expect(current_path).to include('/product/')
end