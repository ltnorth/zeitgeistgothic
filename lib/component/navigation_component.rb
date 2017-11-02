module NavigationComponent
  
  # 'Nav section'
  element :site_logo, 'div[class="site-branding"]'
  element :home_nav, :xpath, '//*[@id="site-navigation"]/div[1]/ul/li[1]/a'
  element :cart_nav, :xpath, '//*[@id="site-navigation"]/div[1]/ul/li[2]/a'
  element :checkout_nav, :xpath, '//*[@id="site-navigation"]/div[1]/ul/li[3]/a'
  element :my_account_nav, :xpath, '//*[@id="site-navigation"]/div[1]/ul/li[4]/a'
  element :shop_nav, :xpath, '//*[@id="site-navigation"]/div[1]/ul/li[5]/a'
  element :search_bar, 'input[id="woocommerce-product-search-field-0"]'
  element :cart_overview, :xpath, '//*[@id="site-header-cart"]/li[1]/a'

  
    
  def click_site_logo
    site_logo.click
  end

  def click_home_nav
    home_nav.click
  end

  def click_cart_nav
    cart_nav.click
  end

  def click_checkout_nav
    checkout_nav.click
  end

  def click_my_account_nav
    my_account_nav.click
  end

  def click_shop_nav
    shop_nav.click
  end

  def type_into_search_bar input
    search_bar.set input
  end

  def enter_search
    search_bar.enter
  end
end