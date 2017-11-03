Given(/^I have an item in my basket$/) do
  @zeitgeist_site = ZeitgeistSite.new
  @zeitgeist_site.zeitgeist_cart_page.load
  @zeitgeist_site.zeitgeist_cart_page.red_cross.visible?
end

When(/^I click the red cross next to that item$/) do
  @zeitgeist_site.zeitgeist_cart_page.red_cross.click
end

Then(/^the item is removed from my basket$/) do
  expect(@zeitgeist_site.zeitgeist_cart_page.red_cross.visible?).to be false
end

And(/^an alert box appears with the option to undo the change$/) do
  expect(@zeitgeist_site.zeitgeist_cart_page.get_remove_confirmation.visible?).to be true
end

And(/^the cart overview is updated$/) do
  
end

And(/^the subtotal of my basket is updated$/) do
  
end
