require_relative '../sections/navigation'
class Pages::ZeitgeistMyAccountPage < SitePrism::Page
  set_url "https://www.zeitgeistgothic.co.uk/my-account/"
  set_url_matcher /zeitgeistgothic.co.uk\/my\-account/

  section :nav, NavSection, '#masthead'

  element :username_input, 'input[id="username"]'
  element :password_input, 'input[id="password"]'
  element :login_button, 'input[name = "login"]'
  element :lost_password_link, :xpath, '//*[@id="post-8"]/div/div/form/p[4]/a'
  element :remember_me_checkbox, "input[id= 'rememberme']"
  element :error_message_box, :xpath, '//*[@id="content"]/div/div[1]/ul/li'

  # Once Logged In.
  element :dashboard_link, :xpath, '//*[@id="post-8"]/div/div/nav/ul/li[1]/a'
  element :orders_link, :xpath, '//*[@id="post-8"]/div/div/nav/ul/li[2]'
  element :downloads_link, :xpath, '//*[@id="post-8"]/div/div/nav/ul/li[3]/a'
  element :address_link, :xpath, '//*[@id="post-8"]/div/div/nav/ul/li[4]/a'
  element :account_link, :xpath, '//*[@id="post-8"]/div/div/nav/ul/li[5]/a'
  element :logout_link, :xpath, '//*[@id="post-8"]/div/div/nav/ul/li[6]/a'

  def fill_in_username(username)
    username_input.set(username)
  end

  def fill_in_password(password)
    password_input.set(password)
  end

  def lost_password_click
    lost_password_link.click
  end

  def click_remember_me_checkbox
    remember_me_checkbox.click
  end

  def click_login_button
    login_button.click
  end

  def signed_in?
    dashboard_link.visible?
  end

  def get_dashboard_link
    dashboard_link
  end

  def get_orders_link
    orders_link
  end

  def get_downloads_link
    downloads_link
  end

  def get_address_link
    address_link
  end

  def get_account_link
    account_link
  end

  def get_logout_link
    logout_link
  end
end

