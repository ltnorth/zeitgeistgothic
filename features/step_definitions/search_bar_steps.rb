And(/^The search bar is displayed$/) do
  @zeitgeist_site.zeitgeist_home_page.nav.search_bar_displayed?
end

Given(/^I am on the Homepage$/) do
  @zeitgeist_site = ZeitgeistSite.new
  @zeitgeist_site.zeitgeist_home_page.load
end

Given(/^I input a relevant product description in the search bar$/) do
  @zeitgeist_site.zeitgeist_home_page.nav.type_into_search_bar("Word Up")
end

When(/^I hit Enter$/) do
  @zeitgeist_site.zeitgeist_home_page.nav.enter_search
end

Then(/^I am redirected to the page with the product displayed on it$/) do
  expect(current_path).to eql("/product/word-up-tee-black/")
end

Given(/^I input a string$/)do
  @zeitgeist_site.zeitgeist_home_page.nav.type_into_search_bar("phone case")
end

Then(/^I am redirected to the results page with the product displayed on it$/) do
  expect(current_path).to eql("/")
end

Given(/^I input a JavaScriptTag$/) do
  @zeitgeist_site.zeitgeist_home_page.nav.type_into_search_bar("<script>alert(document.cookie);</script>")
end

Then(/^I am redirected to an error page$/) do
  expect(@zeitgeist_site.zeitgeist_home_page.is_security_error?.text).to eql("The page you are trying to access is restricted due to a security rule.")  
end





# <body onload=alert('test1')>
