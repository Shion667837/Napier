require 'rails_helper'

RSpec.describe "User pages", type: :request do
  let(:user) { FactoryBot.create(:user) }
  let(:other_user) { FactoryBot.create(:user) }

  describe "GET #new" do
    it "正常なレスポンスを返すこと" do
      get signup_path
      expect(response).to have_http_status 200
    end
  end

  describe "GET #show" do
    context "ログイン済みのユーザーとして" do
      it "正常なレスポンスを返すこと" do
        sigh_in user
        get user_path(user)
        expect(response).to have_http_status 200
      end
    end

    context "アカウントが違うユーザーの場合" do
      before do
        @other_user = FactoryBot.create(:user)
      end

      it "ホーム画面にリダイレクトすること" do
        sign_in @other_user
        get user_path(user)
        expect(response).to redirect_to root_path
      end
    end
  end

  describe "#edit" do
    context "認可されたユーザーとして" do
      it "responds successfully" do
        sign_in user
        get edit_user_path(user)
        expect(response).to be_success
        expect(response).to have_http_status 200
      end
    end

    context "ログインしていないユーザーの場合" do
      it "ログイン画面にリダイレクトすること" do
        get edit_user_path(user)
        expect(response).to have_http_status 302
        expect(response).to redirect_to login_path
      end
    end

    context "アカウントが違うユーザーの場合" do
      it "ホーム画面にリダイレクトすること" do
        sign_in other_user
        get edit_user_path(user)
        expect(response).to redirect_to root_path
      end
    end
  end

  describe "#update" do
    context "認可されたユーザーとして" do
      it "ユーザーを更新できること" do
        user_params = FactoryBot.attributes_for(:user, name: "NewName")
        sign_in user
        patch user_path(user), params: { id: user.id, user: user_params }
        expect(user.reload.name).to eq "NewName"
      end
    end

    context "ログインしていないユーザーの場合" do
      it "ログイン画面にリダイレクトすること" do
        user_params = FactoryBot.attributes_for(:user, name: "NewName")
        patch user_path(user), params: { id: user.id, user: user_params }
        expect(response).to have_http_status "302"
        expect(response).to redirect_to login_path
      end
    end

    context "アカウントが違うユーザーの場合" do
      it "ユーザーを更新できないこと" do
        user_params = FactoryBot.attributes_for(:user, name: "NewName")
        sign_in_as other_user
        patch user_path(user), params: { id: user.id, user: user_params }
        expect(user.reload.name).to eq other_user.name
      end

      it "ホーム画面にリダイレクトすること" do
        user_params = FactoryBot.attributes_for(:user, name: "NewName")
        sign_in other_user
        patch user_path(user), params: { id: user.id, user: user_params }
        expect(response).to redirect_to root_path
      end
    end
  end

  describe "#destroy" do
    context "認可されたユーザーとして" do
      it "ユーザーを削除できること" do
        sign_in user
        expect {
          delete user_path(user), params: { id: user.id }
        }.to change(User, :count).by(-1)
      end
    end
  end
end
