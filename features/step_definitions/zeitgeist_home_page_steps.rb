Given(/^I am on the Home Page$/) do
  @zeitgiest_site.zeitgiest_home_page.load
end
When(/^I click on and of the images under the headings$/) do
  @zeitgiest_site.zeitgiest_home_page.click_shop_by_sweaters
end
Then(/^I am redirected to the corrisponding page$/) do
 expect(current_path).to eql("product-category/hoodies/")
end
When(/^I click on and of the images under the headings$/) do
  @zeitgiest_site.zeitgiest_home_page.click_shop_by_tees
end
Then(/^I am redirected to the corrisponding page$/) do
 expect(current_path).to eql("product-category/tshirts/")
end
When(/^I click on and of the images under the headings$/) do
  @zeitgiest_site.zeitgiest_home_page.click_shop_by_accessories
end
Then(/^I am redirected to the corrisponding page$/) do
 expect(current_path).to eql("product-category/accessories/")
end