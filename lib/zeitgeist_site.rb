class ZeitgeistSite

  def zeitgeist_home_page
    Pages::ZeitgeistHomePage.new
  end

  def zeitgeist_checkout_page
    Pages::ZeitgeistCheckoutPage.new
  end

  def zeitgeist_my_account_page
    Pages::ZeitgeistMyAccountPage.new
  end

  def zeitgeist_cart_page
    Pages::ZeitgeistCartPage.new
  end
  
  def zeitgeist_shop_page
    Pages::ZeitgeistShopPage.new
  end

  def zeitgeist_shop_page_two
    Pages::ZeitgeistShopPageTwo.new
  end

  def zeitgeist_lost_password_page
    Pages::ZeitgeistLostPasswordPage.new
  end

  def zeitgeist_word_up_product_page
    Pages::ZeitgeistWordUpProductPage.new
  end
end