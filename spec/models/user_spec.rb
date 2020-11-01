
require 'rails_helper'

RSpec.describe 'Userに関するテスト', type: :model do
  describe 'アソシエーションのテスト' do
    context 'projectモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:projects).macro).to eq(:has_many)
      end
    end
    context 'commentモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:comments).macro).to eq(:has_many)
      end
    end
    context 'favoritesモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:favorites).macro).to eq(:has_many)
      end
    end
  end
end

describe "バリデーションのテスト" do
  let(:user){ create(:user) }
  
  context 'family_nameカラムのテスト' do
    it "空欄でないこと" do
      user.family_name = ''
      expect(user.valid?).to eq false;
    end

    it "15文字以内であること" do
      user.family_name = Faker::Lorem.characters(number: 15)
      expect(user.valid?).to eq true;
    end

    it "16文字で弾かれること" do
      user.family_name = Faker::Lorem.characters(number: 16)
      expect(user.valid?).to eq false;
    end

  end

  context 'first_nameカラムのテスト' do
    it '空欄でないこと' do
      user.first_name = ''
      expect(user.valid?).to eq false;
    end
    
    it "15文字以内であること" do
      user.first_name = Faker::Lorem.characters(number: 15)
      expect(user.valid?).to eq true;
    end
    
    it "16文字で弾かれること" do
      user.first_name = Faker::Lorem.characters(number: 16)
      expect(user.valid?).to eq false;
    end

    context 'emailのテスト' do
      it '空欄でないこと' do
        user.email = ''
        expect(user.valid?).to eq false;
      end
      
      it "50文字以内であること" do
        user.email = "#{Faker::Lorem.characters(number: 39)}@sample.com"
        expect(user.valid?).to eq true;
      end
    
      it "51文字で弾かれること" do
        user.email = "#{Faker::Lorem.characters(number: 40)}@sample.com"
        expect(user.valid?).to eq false;
      end
    end
  end
end

