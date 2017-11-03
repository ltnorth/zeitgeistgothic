class Pages::ZeitgeistShopPageTwo < SitePrism::Page
  include NavigationComponent

  set_url "https://www.zeitgeistgothic.co.uk/shop/page/2/"
  set_url_matcher /zeitgeistgothic.co.uk\/shop\/page\/2/

  element :home_nav_shop, :xpath, '//*[@id="content"]/div/nav/a[1]'
  element :shop_nav_page_two, :xpath, '//*[@id="content"]/div/nav/a[2]'
  page_num = rand(1..2)
  element :select_page_number, :xpath, "//*[@id='main']/div[1]/nav/ul/li[#{page_num}]/a"

  def click_home_link_page_two
    home_nav_shop.click
  end

  def click_shop_link_page_two
    shop_nav_page_two.click
  end

  def click_to_go_to_new_page_two
    select_page_number.click
  end

end