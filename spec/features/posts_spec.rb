require 'rails_helper'

RSpec.feature "Posts", type: :feature do
  scenario "ユーザーが記事を投稿、削除をする" do
    user = FactoryBot.create(:user)

    visit root_path
    click_link "ログイン"
    fill_in "メールアドレス", with: user.email
    fill_in "パスワード", with: user.password
    click_button "ログイン"

    visit posts_path

    expect{
      page.has_button? "投稿する"
      click_button "投稿する"
      expect(page).to have_content "投稿が完了しました"
      expect(page).to have_content "test"
      expect(page).to have_content "#{user.name}"
    }.to change(user.posts, :count).by(1)

    visit posts_path

    expect{
      expect(page).to have_content "test"
      click_link "削除"
      expect(page).to have_content "投稿を削除しました"
      expect(page).to_not have_content "test"
    }.to change(user.posts, :count).by(-1)
  end

  scenario "他のユーザーの投稿に削除はない" do
    FactoryBot.create(:post)
    other_user = FactoryBot.create(:user, email: "other@test.com")

    visit login_path
    click_link "ログイン"
    fill_in "メールアドレス", with: other_user.email
    fill_in "パスワード", with: other_user.password
    click_button "ログイン"

    visit posts_path

    expect(page).to have_content "test"
    page.has_no_link? "削除"
  end

  trait :with_picture do
    stockprice { File.new("#{Rails.root}/spec/fixtures/picture.jpg") }
  end

  scenario "検索機能" do
    FactoryBot.create(:post)
    FactoryBot.create(:post, content: "search")

    visit posts_path

    fill_in('検索', with: "search")
    click_button "検索"

    expect(page).to have_content "search"
    expect(page).to_not have_content "content"
  end
end
