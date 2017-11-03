Given(/^I am on the shop page$/) do
  @zeitgeist_site = ZeitgeistSite.new
  @zeitgeist_site.zeitgeist_shop_page.load
  @zeitgeist_site.zeitgeist_shop_page.displayed?
end

When(/^I click on an image on page one$/) do
  @zeitgeist_site.zeitgeist_shop_page.click_item_image_randomly_generated
end

Then(/^I am redirected to the correct page for the image I have clicked on$/) do
  
end
