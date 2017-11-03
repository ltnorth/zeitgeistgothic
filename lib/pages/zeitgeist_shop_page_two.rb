require_relative '../sections/navigation'
class Pages::ZeitgeistShopPageTwo < SitePrism::Page

  section :nav, NavSection, '#masthead'

  set_url "https://www.zeitgeistgothic.co.uk/shop/page/2/"
  set_url_matcher /zeitgeistgothic.co.uk\/shop\/page\/2/

  element :home_nav, :xpath, '//*[@id="content"]/div/nav/a[1]'
  element :shop_nav, :xpath, '//*[@id="content"]/div/nav/a[2]'
  page_num = rand(1..2)
  element :select_page_number, :xpath, "//*[@id='main']/div[1]/nav/ul/li[#{page_num}]/a"

  def click_home_link_page_two
    home_nav.click
    sleep 2
  end

  def click_shop_link_page_two
    shop_nav.click
    sleep 2
  end

  def click_to_go_to_page_one
    select_page_number.click
    sleep 2
  end

end