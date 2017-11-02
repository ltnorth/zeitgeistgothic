class Pages::ZeitgeistHomePage < SitePrism::Page
  set_url "https://www.zeitgeistgothic.co.uk/"
  set_url_matcher /zeitgeistgothic.co.uk/

  # 'Nav section'
  element :site_logo, 'div[class="site-branding"]'
  element :home_nav, :xpath, '//*[@id="site-navigation"]/div[1]/ul/li[1]/a'
  element :cart_nav, :xpath, '//*[@id="site-navigation"]/div[1]/ul/li[2]/a'
  element :checkout_nav, :xpath, '//*[@id="site-navigation"]/div[1]/ul/li[3]/a'
  element :my_account_nav, :xpath, '//*[@id="site-navigation"]/div[1]/ul/li[4]/a'
  element :shop_nav, :xpath, '//*[@id="site-navigation"]/div[1]/ul/li[5]/a'
  element :search_bar, 'input[id="woocommerce-product-search-field-0"]'
  element :cart_overview, :xpath, '//*[@id="site-header-cart"]/li[1]/a'

  # 'Shop by' section
  element :shop_by_accessories, :xpath, '//*[@id="main"]/section[1]/div/ul/li[1]/a'
  element :shop_by_sweaters, :xpath, '//*[@id="main"]/section[1]/div/ul/li[2]/a'
  element :shop_by_tees, :xpath, '//*[@id="main"]/section[1]/div/ul/li[3]/a'
  
  # 'New in' section
  element :new_in_phone_case, :xpath, '//*[@id="main"]/section[2]/div/ul/li[1]/a[1]'
  element :add_to_basket_phone_case, :xpath, '//*[@id="main"]/section[2]/div/ul/li[1]/a[2]'
  element :new_in_grey_tee, :xpath, '//*[@id="main"]/section[2]/div/ul/li[2]/a[1]'
  element :select_options_grey_tee, :xpath, '//*[@id="main"]/section[2]/div/ul/li[2]/a[2]'
  element :new_in_icon_sweater, :xpath, '//*[@id="main"]/section[2]/div/ul/li[3]/a[1]'
  element :select_options_icon_sweater, :xpath, '//*[@id="main"]/section[2]/div/ul/li[3]/a[2]'
  element :new_in_skully_sweater, :xpath, '//*[@id="main"]/section[2]/div/ul/li[4]/a[1]'
  element :select_options_skully_sweater, :xpath, '//*[@id="main"]/section[2]/div/ul/li[4]/a[2]'
  
  # 'Best sellers section'
  element :best_sellers_cross_section, :xpath, '//*[@id="main"]/section[3]/div/ul/li[1]/a[1]'
  element :select_options_cross_section, :xpath, '//*[@id="main"]/section[3]/div/ul/li[1]/a[2]'
  element :best_sellers_rest_in_pieces, :xpath, '//*[@id="main"]/section[3]/div/ul/li[2]/a[1]'
  element :select_options_rest_in_pieces, :xpath, '//*[@id="main"]/section[3]/div/ul/li[2]/a[2]'
  element :best_sellers_word_up, :xpath, '//*[@id="main"]/section[3]/div/ul/li[3]/a[1]'
  element :select_options_word_up, :xpath, '//*[@id="main"]/section[3]/div/ul/li[3]/a[2]'
  element :best_sellers_icon_case, :xpath, '//*[@id="main"]/section[3]/div/ul/li[4]/a[1]'
  element :add_to_basket_icon_case, :xpath, '//*[@id="main"]/section[3]/div/ul/li[4]/a[2]'
  
  
  
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

  def click_shop_by_accessories
    shop_by_accessories.click
  end

  def click_shop_by_sweaters
    shop_by_sweaters.click
  end

  def click_shop_by_tees
    shop_by_tees.click
  end

end








