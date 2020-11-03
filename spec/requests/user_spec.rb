require 'rails_helper'

describe "非ログイン時" do
  let(:user) { create(:user) }

  context "以下のアクションにログインできない" do
    it '編集ページ' do
      get edit_user_path(user)
      expect(response).to have_http_status 302
    end
  end
end