class GuestSessionsController < ApplicationController
  def create
    user = User.find_or_create_by(email: "guest@exapmle.com") do |userr|
      userr.password = SecureRandom.urlsafe_base64
      userr.name = "ゲストユーザー"
    end
      session[:user_id] = user.id
      flash[:success] = "ゲストユーザーとしてログインしました"
      redirect_to user
  end
end
