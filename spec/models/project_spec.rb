require 'rails_helper'

RSpec.describe 'projectに関するテスト' , type: :model do
  describe 'アソシエーションのテスト' do
    context 'userモデルとの関係' do
      it 'N:1となっている' do
        expect(Project.reflect_on_association(:user).macro).to eq(:belongs_to)
      end
    end
    
    context 'jobモデルとの関係' do
      it 'N:1となっている' do
        expect(Project.reflect_on_association(:job).macro).to eq(:belongs_to)
      end
    end

    context 'commentsモデルとの関係' do
      it 'N:1となっている' do
        expect(Project.reflect_on_association(:comments).macro).to eq(:has_many)
      end
    end

    context 'favoritesモデルとの関係' do
      it 'N:Nとなっている' do
        expect(Project.reflect_on_association(:favorites).macro).to eq(:has_many)
      end
    end
  end

  describe "バリデーションのテスト" do
    let(:project){create(:project) }
    describe 'nameカラムのテスト' do
      it "空欄で弾かれること" do 
        project.name = ''
        expect(project.valid?).to eq false;
      end

      it "50文字以内であること" do
        project.name = Faker::Lorem.characters(number: 50)
        expect(project.valid?).to eq true;
      end

      it "51文字以内で弾かれること" do
        project.name = Faker::Lorem.characters(number: 51)
        expect(project.valid?).to eq false;
      end
    end

    describe 'contentカラムのテスト' do
      it "空欄で弾かれること" do 
        project.content = ''
        expect(project.valid?).to eq false;
      end

      it "250文字以内であること" do
        project.content = Faker::Lorem.characters(number: 250)
        expect(project.valid?).to eq true;
      end

      it "251文字以内で弾かれること" do
        project.content = Faker::Lorem.characters(number: 251)
        expect(project.valid?).to eq false;
      end
    end

    describe 'total_amountカラムのテスト' do
      it "空欄で弾かれること" do 
        project.content = ''
        expect(project.valid?).to eq false;
      end

      it "10文字以内であること" do
        project.total_amount = Faker::Number.number(digits:10)
        expect(project.valid?).to eq true;
      end

      it "11文字以内で弾かれること" do
        project.total_amount = Faker::Number.number(digits:11)
        expect(project.valid?).to eq false;
      end
    end

    describe 'reducation_amountカラムのテスト' do
      it "空欄で弾かれること" do
        project.reducation_amount = ''
      end

      it "10文字以内であること" do
        project.reducation_amount = Faker::Number.number(digits:10)
      end

      it "11文字以内で弾かれること" do
        project.total_amount = Faker::Number.number(digits:11)
        expect(project.valid?).to eq false;
      end
    end
  end
end