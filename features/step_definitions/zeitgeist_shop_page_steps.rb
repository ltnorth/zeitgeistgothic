Given(/^I am on the shop page$/) do
  @zeitgeist_site = ZeitgeistSite.new
  @zeitgeist_site.zeitgeist_shop_page.load
  @zeitgeist_site.zeitgeist_shop_page.displayed?
end
# Selecting via image
When(/^I click on an image on page one$/) do
  @zeitgeist_site.zeitgeist_shop_page.click_item_image_randomly_generated
end

Then(/^I am redirected to the correct page for the image I have clicked on$/) do
  expect(@zeitgeist_site.zeitgeist_shop_page.checking_for_product_page).to be true
end
# Selecting via button
When(/^I click on a button on page one$/) do
  @zeitgeist_site.zeitgeist_shop_page.click_item_image_randomly_generated
end

Then(/^I am redirected to the correct page for the button I have clicked on$/) do
  expect(@zeitgeist_site.zeitgeist_shop_page.checking_for_product_page).to be true
end

# Sort button
When(/^I have selected the sorting method of my choosing from the dropdown menu on page one$/) do
  @zeitgeist_site.zeitgeist_shop_page.select_drop_down_option
end

Then(/^The page is sorted in accordance to my choice$/) do
  sort_url = @zeitgeist_site.zeitgeist_shop_page.correct_sort_url
  expect(current_url).to include(sort_url)
end

# Next Page
When(/^I click on page two or next page arrow$/) do
  @zeitgeist_site.zeitgeist_shop_page.click_to_go_to_new_page
end
Then(/^I am taken to the next page or page two$/) do
  expect(current_url).to eql 'https://www.zeitgeistgothic.co.uk/shop/page/2/'
end 

# Navigate home
When(/^I click the home nav link$/) do
  @zeitgeist_site.zeitgeist_shop_page.click_home_link
end
Then(/^I am returned to the websites home page$/) do
  expect(current_url).to eql 'https://www.zeitgeistgothic.co.uk/'
end 