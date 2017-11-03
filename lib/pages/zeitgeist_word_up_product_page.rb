require_relative '../sections/navigation'
class ZeitgeistWordUpProductPage < SitePrism::Page
  
  set_url "https://www.zeitgeistgothic.co.uk/product/word-up-tee-black/"
  set_url_matcher /zeitgeistgothic.co.uk\/product\/word-up-tee-black/

  element :select_size_option, "select[id='size']"
  element :select_quantity, "input[id='quantity_59fc604fd16ea']"
  element :add_to_basket, :xpath, '//*[@id="product-2983"]/div[2]/form/div/div[2]/button'
  element :clear_size, :xpath, '//*[@id="product-2983"]/div[2]/form/table/tbody/tr/td[2]/a'
  element :view_basket, :xpath, '//*[@id="content"]/div/div[1]/div/a'

  def select_size
    select_size_option.set('M')
  end

  def select_quantity
    num = rand(9)
    select_quantity.set('#{num}')
  end

  def click_add_to_basket
    add_to_basket.click
  end

  def click_clear_size
    clear_size.click
  end

  def click_view_basket
    view_basket.click
  end
  
end