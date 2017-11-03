class NavSection < SitePrism::Section
  # 'Nav section'
  element :site_logo, 'div[class="site-branding"]'
  element :home_nav, :xpath, '//*[@id="site-navigation"]/div[1]/ul/li[1]/a'
  element :cart_nav, :xpath, '//*[@id="site-navigation"]/div[1]/ul/li[2]/a'
  element :checkout_nav, :xpath, '//*[@id="site-navigation"]/div[1]/ul/li[3]/a'
  element :my_account_nav, :xpath, '//*[@id="site-navigation"]/div[1]/ul/li[4]/a'
  element :shop_nav, :xpath, '//*[@id="site-navigation"]/div[1]/ul/li[5]/a'
  element :search_bar, 'input[id="woocommerce-product-search-field-0"]'
  element :cart_overview, :xpath, '//*[@id="site-header-cart"]/li[1]/a'
  element :mini_cart, "li['class=\"woocommerce-mini-cart-item mini_cart_item\"']"
  element :remove_item_from_mini_cart, :xpath, '//*[@id="site-header-cart"]/li[2]/div/div/ul/li/a[1]'
  element :product_link_in_mini_cart, :xpath, '//*[@id="site-header-cart"]/li[2]/div/div/ul/li/a[2]'
  element :view_basket_in_mini_cart, :xpath, '//*[@id="site-header-cart"]/li[2]/div/div/p[2]/a[1]'
  element :checkout_basket_in_mini_cart, :xpath, '//*[@id="site-header-cart"]/li[2]/div/div/p[2]/a[2]'
  element :paypal_checkout_in_mini_cart, :xpath, 'a[@id="woo_pp_ec_button"]'

  def hover_over_mini_cart
    mini_cart.hover
  end

  def remove_item_from_mini_cart
    remove_item_from_mini_cart.click
  end

  def click_product_link_in_mini_cart
    product_link_in_mini_cart.click
  end

  def click_cart_link_in_mini_cart
    view_basket_in_mini_cart.click
  end

  def click_checkout_link_in_mini_cart
    checkout_basket_in_mini_cart.click
  end

  def click_paypal_link_in_mini_cart
    paypal_checkout_in_mini_cart.click
  end

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

  def search_bar_displayed?
    search_bar.visible?
  end

  def type_into_search_bar input
    search_bar.set input
  end

  def enter_search
    search_bar.send_keys(:enter)
  end
end
  