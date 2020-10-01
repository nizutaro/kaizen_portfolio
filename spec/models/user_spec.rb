
require 'rails_helper'


RSpec.describe User, "モデルに関するテスト" , type: :model do
  describe 'ユーザー登録できるか' do
    it "family_name first_name, email,passwordが登録できるか？" do
    @user = build(:user)
    expect(@user.valid?).to be_valid
    end
  end
end