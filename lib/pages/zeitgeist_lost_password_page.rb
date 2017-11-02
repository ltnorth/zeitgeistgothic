class Pages::ZeitgeistLostPasswordPage < SitePrism::Page
  

  element :username_field, "input[id= 'user_login']"
  element :reset_password_button, :xpath, '//*[@id="post-8"]/div/div/form/p[3]/input[2]'


    def enter_username
      username_field.set(username)
    end

    def click_reset_password_button
      reset_password_button.click
    end


end