require_relative '../sections/navigation'
class Pages::ZeitgeistWordUpProductPage < SitePrism::Page
  
  set_url "https://www.zeitgeistgothic.co.uk/product/word-up-tee-black/"
  set_url_matcher /zeitgeistgothic.co.uk\/product\/word-up-tee-black/
  section :nav, NavSection, '#masthead'

  element :select_size_option, "select[name='attribute_size']"
  element :select_quantity, "input[name='quantity']"
  element :add_to_basket, :xpath, '//*[@id="product-2983"]/div[2]/form/div/div[2]/button'
  element :clear_size, :xpath, '//*[@id="product-2983"]/div[2]/form/table/tbody/tr/td[2]/a'
  element :view_basket, :xpath, '//*[@id="content"]/div/div[1]/div/a'
  element :view_basket_present, :xpath, '//*[@id="content"]/div/div[1]/div'

  def select_size
    select_size_option.select('M')
  end

  def choose_specific_quantity num
    select_quantity.set(num)
  end

  def choose_quantity 
    num = rand(1..9)
    select_quantity.set(num)
  end

  def click_add_to_basket
    add_to_basket.click
  end

  def click_clear_size
    clear_size.click
  end

  def view_basket_appeared
    view_basket_present.visible?
  end

  def click_view_basket
    view_basket.click
  end

# Required method so it can be used in the before hook
  def added_to_basket
    select_size
    choose_quantity 
    click_add_to_basket
  end

  def specific_added_to_basket
    select_size
    choose_specific_quantity 2
    click_add_to_basket
  end
  
end