class Pages::ZeitgeistCartPage < SitePrism::Page
  set_url "http://zeitgeistgothic.co.uk/cart/"
  set_url_matcher /zeitgeistgothic.co.uk\/cart/

  element :product_name, :xpath, '//*[@id="post-6"]/div/div/form/table/tbody/tr[1]/td[3]/a'
  element :size, :xpath '//*[@id="post-6"]/div/div/form/table/tbody/tr[1]/td[3]/dl/dd/p'
  element :quantity, '#quantity'
  element :coupon_code_field, '#coupon_code'
  element :apply_coupon_button, :xpath, '/*[@id="post-6"]/div/div/form/table/tbody/tr[2]/td/div/input[2]'
  element :subtotal, :xpath, '//*[@id="post-6"]/div/div/div/div/table/tbody/tr[1]/td/span'
  element :free_shipping, '#shipping_method_0_free_shipping11'
  element :uk_tracked_shipping, '#shipping_method_0_flat_rate12'
  element :worldwide_shipping, '#shipping_method_0_flat_rate13'
  element :total, :xpath, '//*[@id="post-6"]/div/div/div/div/table/tbody/tr[3]/td/strong/span'
  element :checkout_button, :xpath, '//*[@id="post-6"]/div/div/div/div/div/a'

  def enter_quantity(number)
  	quantity.set(number)
  end

  def enter_coupon_code(code)
  	coupon_code_field.set(code)
  end

  def click_apply_coupon_button
  	apply_coupon_button.click
  end

  def select_free_shipping
  	free_shipping.click
  end

  def select_tracked_shipping
  	uk_tracked_shipping.click
  end

  def select_worldwide_shipping
  	worldwide_shipping.click
  end

  def checkout
  	checkout_button.click
  end

end