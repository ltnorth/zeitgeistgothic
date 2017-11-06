Given(/^I am on the homepage$/) do
  @zeitgeist_site = ZeitgeistSite.new
  @zeitgeist_site.zeitgeist_home_page.load
  @basket_amount = @zeitgeist_site.zeitgeist_home_page.nav.get_cart_amount
end

# Best seller image click
When(/^I click on the image of a best seller product$/) do
  @zeitgeist_site.zeitgeist_home_page.click_random_best_seller_image
end
Then(/^I am redirected to the product page for that product$/) do
  expect(current_url).to include('/product/')
end

# Best seller button click
When(/^I click the button under the product image$/) do
  @option = @zeitgeist_site.zeitgeist_home_page.random_best_seller_button_text
  @zeitgeist_site.zeitgeist_home_page.click_random_best_seller_button
end
Then(/^I am either redirected to the item's product page or it is added straight to my basket if appropriate$/) do
  if @option == 0
    expect(current_url).to include('/product/')
  else
    # expect(@zeitgeist_site.zeitgeist_home_page.nav.sidebar_visible?).to be true
    expect(@zeitgeist_site.zeitgeist_home_page.nav.get_sidebar_subtotal).to be > @basket_amount
  end
end

# Selecting new in item via image
When(/^I click on the image under the new in heading$/) do
  @zeitgeist_site.zeitgeist_home_page.click_new_in_grey_tee
end

Then(/^I am redirected to the correct page for the skully tee grey image I have clicked on$/) do
  expect(current_url).to eql 'https://www.zeitgeistgothic.co.uk/product/skully-tee-grey/'
end

# Selecting new in item via the button
When(/^I click on the select options button under the new in heading$/) do
  @zeitgeist_site.zeitgeist_home_page.click_select_options_grey_tee
end

Then(/^I am redirected to the correct page for the skully tee grey via the options I have clicked on$/)do
  expect(current_url).to eql 'https://www.zeitgeistgothic.co.uk/product/skully-tee-grey/'
end