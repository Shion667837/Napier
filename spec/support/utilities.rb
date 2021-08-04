require 'rails_helper'

def full_title(page_title)
  base_title = 'Napier'.freeze
  if page_title.blank?
    base_title
  else
    "#{page_title} - #{base_title}"
  end
end

def sign_in(user, options={})
  if options[:no_capybara]
    # Capybaraを使用していない場合にもサインインする。
    remember_token = User.new_remember_token
    cookies[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.encrypt(remember_token))
  else
    visit signin_path
    fill_in "メールアドレス", with: user.email
    fill_in "パスワード", with: user.password
    click_button "ログイン"
  end
end
