Given(/^I am on the word up product page$/) do
  @zeitgeist_site = ZeitgeistSite.new
  @zeitgeist_site.zeitgeist_word_up_product_page.load
  @zeitgeist_site.zeitgeist_word_up_product_page.displayed?
end

When(/^I select a size of medium$/) do
  @zeitgeist_site.zeitgeist_word_up_product_page.select_size
end

And(/^I select a quantity$/) do
  @zeitgeist_site.zeitgeist_word_up_product_page.choose_quantity
end

And(/^I click add to basket$/) do
  @zeitgeist_site.zeitgeist_word_up_product_page.click_add_to_basket
end

Then(/^The shirt will appear in my basket$/) do
  @zeitgeist_site.zeitgeist_word_up_product_page.view_basket_appeared
end