Before('@item_in_basket') do
  @zeitgeist_site = ZeitgeistSite.new
  @zeitgeist_site.zeitgeist_word_up_product_page.load
  @zeitgeist_site.zeitgeist_word_up_product_page.added_to_basket
end