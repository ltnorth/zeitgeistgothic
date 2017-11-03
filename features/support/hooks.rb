Before('@item_in_basket') do
  @site = ZeitgeistSite.new
  @site.zeitgeist_word_up_product_page.load
  @site.zeitgeist_word_up_product_page.added_to_basket
end