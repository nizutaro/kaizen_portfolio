require 'rails_helper'

describe "非ログイン時" do
  let(:job) { create(:job) }

  context "以下のアクションにログインできない" do
    it 'ジョブ一覧ページ' do
      get jobs_path
      expect(response).to have_http_status 302
    end

  end
end