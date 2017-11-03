require_relative '../sections/navigation'
class Pages::ZeitgeistCartPage < SitePrism::Page

  section :nav, NavSection, '#masthead'

  set_url "http://zeitgeistgothic.co.uk/cart/"
  set_url_matcher /zeitgeistgothic.co.uk\/cart/


  # The small home link which takes back to homepage and the return to shop button
  element :small_homepage_link, :xpath, '//*[@id="content"]/div/nav/a'
  element :return_to_homepage_button, :xpath, '//*[@id="post-6"]/div/div/p[2]/a'

  # filling in the quantity stuff
  element :quantity_input, "input[id='quantity_59fb803959a69']"

  # clicking the red x to remove the product and confirmation box
  element :removing_product, :xpath, '//*[@id="post-6"]/div/div/form/table/tbody/tr[1]/td[1]/a'
  element :remove_confirmation, :xpath, '//*[@id="post-6"]/div/div[1]'

  # clicking on product image to be taken to the product id page
  element :clicking_on_product_image, :xpath, '//*[@id="post-6"]/div/div/form/table/tbody/tr[1]/td[2]/a'

  # clicking on the product name link to go to the product id page
  element :clicking_on_product_name_link, :xpath, '//*[@id="post-6"]/div/div/form/table/tbody/tr[1]/td[3]/a'

  # clicking on the apply coupon button and inputting
  element :input_coupon_code, "input[id='coupon_code']"
  element :clicking_on_apply_coupon_button, :xpath, '//*[@id="post-6"]/div/div/form/table/tbody/tr[2]/td/div/input[2]'
  element :successful_coupon, :xpath, '//*[@id="post-6"]/div/div/div[1]'

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

  def click_small_homepage_link
  	small_homepage_link.click
  end

  def get_return_to_homepage
    return_to_homepage_button
  end

  def inputting_quantity_of_product
  	num = rand(10)
  	quantity_input.set(num)
  end

  def red_cross
    removing_product
  end

  def get_remove_confirmation
    remove_confirmation
  end

  def click_product_image
  	clicking_on_product_image.click
  end

  def click_on_product_name_link
  	click_on_product_name_link.click
  end

  def applying_coupon_code
  	input_coupon_code.set('SPARTA')
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