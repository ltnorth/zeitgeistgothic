Before('@item_in_basket') do
  @zeitgeist_site = ZeitgeistSite.new
  @zeitgeist_site.zeitgeist_word_up_product_page.load
  @zeitgeist_site.zeitgeist_word_up_product_page.added_to_basket
end

Before('@specific_item_in_basket') do
  @zeitgeist_site = ZeitgeistSite.new
  @zeitgeist_site.zeitgeist_word_up_product_page.load
  @zeitgeist_site.zeitgeist_word_up_product_page.specific_added_to_basket
end

Before('@logged_in') do
  @zeitgeist_site = ZeitgeistSite.new
  @zeitgeist_site.zeitgeist_my_account_page.load
  @zeitgeist_site.zeitgeist_my_account_page.fill_in_username(ENV['ZEITGEIST_USERNAME'])
  @zeitgeist_site.zeitgeist_my_account_page.fill_in_password(ENV['ZEITGEIST_PASSWORD'])
  @zeitgeist_site.zeitgeist_my_account_page.click_login_button
end