class Pages::ZeitgeistHomePage < SitePrism::Page
  include NavigationComponent
  set_url "https://www.zeitgeistgothic.co.uk/"
  set_url_matcher /zeitgeistgothic.co.uk/


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
  

  def click_shop_by_accessories
    shop_by_accessories.click
  end

  def click_shop_by_sweaters
    shop_by_sweaters.click
  end

  def click_new_in_phone_case
    new_in_phone_case.click
  end
  def click_add_to_basket_phone_case
    add_to_basket_phone_case.click
  end
  def click_new_in_grey_tee
    new_in_grey_tee.click
  end
  def click_select_options_grey_tee
    select_options_grey_tee.click
  end
  def click_new_in_icon_sweater
    new_in_icon_sweater.click
  end
  def click_select_options_icon_sweater
    select_options_icon_sweater.click
  end
  def click_new_in_skully_sweater
    new_in_skully_sweater.click
  end
  def click_select_options_skully_sweater
    select_options_skully_sweater.click
  end

  def best_sellers_cross_section
    best_sellers_cross_section.click
  end
  def select_options_cross_section
    select_options_cross_section.click
  end
  def best_sellers_rest_in_pieces
    best_sellers_rest_in_pieces.click
  end
  def select_options_rest_in_pieces
    select_options_rest_in_pieces.click
  end
  def best_sellers_word_up
    best_sellers_word_up.click
  end
  def select_options_word_up
    select_options_word_up.click
  end
  def best_sellers_icon_case
    best_sellers_icon_case.click
  end
  def add_to_basket_icon_case
    add_to_basket_icon_case.click
  end
end








