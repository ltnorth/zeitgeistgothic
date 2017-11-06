Given(/^I am on the homepage$/) do
  @zeitgeist_site = ZeitgeistSite.new
  @zeitgeist_site.zeitgeist_home_page.load
  @zeitgeist_site.zeitgeist_home_page.displayed?
end
# Selecting new in item via image
When(/^I click on the image under the new in heading$/) do
  @zeitgeist_site.zeitgeist_home_page.click_new_in_grey_tee
end

Then(/^I am redirected to the correct page for the skully tee grey image I have clicked on$/) do
  expect(current_url).to eql 'https://www.zeitgeistgothic.co.uk/product/skully-tee-grey/'
end

When(/^I click on the select options button under the new in heading$/) do
  @zeitgeist_site.zeitgeist_home_page.click_select_options_grey_tee
end

Then(/^I am redirected to the correct page for the skully tee grey via the options I have clicked on$/)do
  expect(current_url).to eql 'https://www.zeitgeistgothic.co.uk/product/skully-tee-grey/'
end