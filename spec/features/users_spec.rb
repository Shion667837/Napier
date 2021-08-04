require 'rails_helper'

RSpec.feature 'User', type: :feature do
  include ActiveJob::TestHelper
  let(:user) { FactoryBot.create(:user) }

  scenario "ユーザーはサインアップに成功する" do
    visit signup_path
    click_link "登録する"

    perform_enqueued_jobs do
      expect {
        fill_in "名前", with: "Example"
        fill_in "メールアドレス", with: "test@example.com"
        fill_in "パスワード",  with: "test123"
        fill_in "パスワード再入力", with: "test123"
        click_button "新しいアカウントを作成"
      }.to change(User, :count).by(1)
      expect(current_path).to eq root_path
    end
  end

  scenario "ログインに成功しログアウトすること" do
    valid_login(user)

    expect(current_path).to eq user_path(user)
    expect(page).to_not have_content "ログイン"

    # ログアウトのテスト
    click_link "ログアウト"

    expect(current_path).to eq root_path
    expect(page).to have_content "ログイン"
  end
end
