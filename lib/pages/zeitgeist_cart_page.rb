class Pages::ZeitgeistCartPage < SitePrism::Page
  include NavigationComponent

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


  # The small home link which takes back to homepage
  element :small_homepage_link, :xpath, '//*[@id="content"]/div/nav/a'

  # filling in the quantity stuff
  element :quantity_input, "input[id='quantity_59fb803959a69']"

  # clicking the red x to remove the product
  element :removing_product, :xpath, '//*[@id="post-6"]/div/div/form/table/tbody/tr[1]/td[1]/a'

  # clicking on product image to be taken to the product id page
  element :clicking_on_product_image, :xpath, '//*[@id="post-6"]/div/div/form/table/tbody/tr[1]/td[2]/a'

  # clicking on the product name link to go to the product id page
  element :clicking_on_product_name_link, :xpath, '//*[@id="post-6"]/div/div/form/table/tbody/tr[1]/td[3]/a'

  # clicking on the apply coupon button and inputting
  element :input_coupon_code, "input[id='coupon_code']"
  element :clicking_on_apply_coupon_button, :xpath, '//*[@id="post-6"]/div/div/form/table/tbody/tr[2]/td/div/input[2]'

  # clicking on the update basket button
  element :clicking_on_update_basket_button, :xpath, '//*[@id="post-6"]/div/div/form/table/tbody/tr[2]/td/input[1]'

  # choosing the shipping costs; click
  num = rand(3)
  element :choosing_delivery_options, "input[id='shipping_method_0_free_shipping1#{num}']"

  # clicking on the calculate shipping tag
  element :calculate_shipping_tag, :xpath, '//*[@id="post-6"]/div/div/div/div/table/tbody/tr[2]/td/form/p/a'

  # inputting county and postcode
  element :input_county, "input[id='calc_shipping_state']"
  element :input_post_code, "input[id='calc_shipping_postcode']"

  # clicking on the update totals button
  element :clicking_on_update_totals_button, :xpath, '//*[@id="post-6"]/div/div/div/div/table/tbody/tr[2]/td/form/section/p[4]/button'

  # clicking on proceed to checkout button
  element :clicking_on_proceed_to_checkout_button, :xpath, '//*[@id="post-6"]/div/div/div[2]/div/div/a'

  # clicking on checkout with paypal button
  element :clicking_on_paypal_button, "input[id='woo_pp_ec_button']"

  def return_to_homepage
  	small_homepage_link.click
  end

  def inputting_quantity_of_product
  	num = rand(10)
  	quantity_input.set(num)
  end

  def removing_product_in_cart
  	removing_product.click
  end

  def click_product_image
  	clicking_on_product_image.click
  end

  def click_on_product_name_link
  	click_on_product_name_link.click
  end

  def applying_coupon_code
  	input_coupon_code.set('XFJL45')
  	clicking_on_apply_coupon_button.click
  end

  def click_update_basket
  	clicking_on_update_basket_button.click
  end

  def choose_shipping_type
  	choosing_delivery_options.click
  end

  def click_calculate_shipping_cost
  	calculate_shipping_tag.click
  end

  def fill_address_fields
  	input_county.set("Leeds")
  	input_post_code.set("LS12 1BE")
  end

  def click_update_total
  	clicking_on_update_totals_button.click
  end

  def click_proceed_to_checkout
  	clicking_on_proceed_to_checkout_button.click
  end

  def click_on_paypal_button
  	clicking_on_paypal_button.click
  end

end