require 'rails_helper'

describe "非ログイン時" do
  let(:project) { create(:project) }

  context "以下のアクションにログインできない" do
    it 'プロジェクト作成ページ' do
      get new_project_path
      expect(response).to have_http_status 302
    end

    it 'プロジェクト編集ページ' do
      get edit_project_path(project)
      expect(response).to have_http_status 302
    end
  end
end