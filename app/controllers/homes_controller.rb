class HomesController < ApplicationController
  def about
  end

  def inquery

  end

  def new_guest
    user = User.find_or_create_by!(
      family_name: 'ゲスト' ,
      first_name: 'ユーザー' ,
      email: 'guest@example.com' ) do |user|
        user.password = SecureRandom.urlsafe_base64
      end
    sign_in user
    redirect_to projects_path notice: 'ゲストユーザーとしてログインしました'
  end
end
