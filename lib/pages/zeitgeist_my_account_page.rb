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
  element :error_message_box, '//*[@id="content"]/div/div[1]/ul/li'

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
end

