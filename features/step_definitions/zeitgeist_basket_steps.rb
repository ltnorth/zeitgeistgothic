Given(/^I am on the cart page$/) do
  @zeitgeist_site = ZeitgeistSite.new
  @zeitgeist_site.zeitgeist_cart_page.load
end

Then(/^I can move on$/) do
  expect(current_path).to eql('/cart/')
end

Given(/^I have an empty basket$/) do
  @zeitgeist_site.zeitgeist_cart_page.get_return_to_homepage.visible?
end

When(/^I click 'return to shop'$/) do
  @zeitgeist_site.zeitgeist_cart_page.get_return_to_homepage.click
end

Then(/^I am redirected to the shop page$/) do
  expect(current_path).to eql('/shop/')
end

Given(/^I have an item in my basket$/) do
  @zeitgeist_site.zeitgeist_cart_page.red_cross.visible?
  @amount = @zeitgeist_site.zeitgeist_cart_page.nav.get_cart_amount
end

When(/^I click on the name of an item in my basket$/) do
  @zeitgeist_site.zeitgeist_cart_page.click_on_product_name_link
end
Then(/^I am redirected to that item's product page$/) do
  expect(current_url).to include('/product/')
end


When(/^I click the red cross next to that item$/) do
  @zeitgeist_site.zeitgeist_cart_page.red_cross.click
end

Then(/^an alert box appears with the option to undo the change$/) do
  expect(@zeitgeist_site.zeitgeist_cart_page.get_remove_confirmation.visible?).to be true
end

And(/^the cart overview is updated$/) do
  @zeitgeist_site.zeitgeist_cart_page.nav.get_cart_amount < @amount
end

When(/^I click on the proceed to checkout button$/) do
  @zeitgeist_site.zeitgeist_cart_page.click_proceed_to_checkout
end

Then(/^I am redirected to the checkout page$/) do
  expect(current_path).to eql('/checkout/')
end


Given(/^I have removed an item from my basket$/) do
    @amount = @zeitgeist_site.zeitgeist_cart_page.nav.get_cart_amount
    @zeitgeist_site.zeitgeist_cart_page.red_cross.click
end

When(/^I click on the undo link$/) do
  @zeitgeist_site.zeitgeist_cart_page.get_remove_confirmation.click
end

Then(/^the item reapears in my basket.$/) do
  expect(@zeitgeist_site.zeitgeist_cart_page.red_cross.visible?).to be true  
  expect(@zeitgeist_site.zeitgeist_cart_page.nav.get_cart_amount).to eql(@amount)
end


Given(/^i adjust the quantity of the item in my basket$/) do
  @quantity = @zeitgeist_site.zeitgeist_cart_page.quantity_of_product
  @zeitgeist_site.zeitgeist_cart_page.inputting_quantity_of_product
end
When(/^I click the update button$/) do
  @zeitgeist_site.zeitgeist_cart_page.click_update_basket
end
Then(/^My basket is updated succesfully$/) do
  expect(@zeitgeist_site.zeitgeist_cart_page.quantity_of_product).not_to eql(@quantity)
end