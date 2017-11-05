# Go to the product page of an item in your basket
Given(/^I have an item in my basket$/) do
  @zeitgeist_site = ZeitgeistSite.new
  @zeitgeist_site.zeitgeist_cart_page.load
  @zeitgeist_site.zeitgeist_cart_page.red_cross.visible?
  @amount = @zeitgeist_site.zeitgeist_cart_page.nav.get_cart_amount
end
When(/^I click on the name of an item in my basket$/) do
  @zeitgeist_site.zeitgeist_cart_page.click_on_product_name_link
end
Then(/^I am redirected to that item's product page$/) do
  expect(current_url).to include('/product/')
end

# Remove an item from your basket
When(/^I click the red cross next to that item$/) do
  @zeitgeist_site.zeitgeist_cart_page.red_cross.click
end
Then(/^an alert box appears with the option to undo the change$/) do
  expect(@zeitgeist_site.zeitgeist_cart_page.get_remove_confirmation.visible?).to be true
end
And(/^the cart overview is updated$/) do
  @zeitgeist_site.zeitgeist_cart_page.nav.get_cart_amount < @amount
end

# Checkout
When(/^I click checkout$/) do
  @zeitgeist_site.zeitgeist_cart_page.click_proceed_to_checkout
end
Then(/^I am redirected to the checkout page$/) do
  expect(current_path).to eql('/checkout/')
end