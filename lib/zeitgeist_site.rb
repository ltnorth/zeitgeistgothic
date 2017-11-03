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

  def zeitgeist_lost_password_page
    Pages::ZeitgeistLostPasswordPage.new
  end
end