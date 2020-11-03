
require 'rails_helper'

RSpec.describe 'Jobに関するテスト' , type: :model do
  describe 'アソシエーションのテスト' do
    context 'projectモデルとの関係' do
      it '1:Nとなっている' do
        expect(Job.reflect_on_association(:projects).macro).to eq(:has_many)
      end
    end
  end


  describe "バリデーションのテスト" do
    let(:job){ create(:job) }
    
    context 'nameカラムのテスト' do
      it '空欄で弾かれること' do
        job.name = ''
        expect(job.valid?).to eq false;
      end

      it  '30文字まで入力できること' do
        job.name = Faker::Lorem.characters(number: 30)
        expect(job.valid?).to eq true;
      end

      it '31文字ではじかれること' do
        job.name =  Faker::Lorem.characters(number: 31)
        expect(job.valid?).to eq false;
      end
    end

    context 'amountカラムのテスト' do
      it '空欄で弾かれること' do
        job.amount = ''
        expect(job.valid?).to eq false;
      end

      it '15文字まで入力できること' do
        job.name = Faker::Number.number(digits:15)
        expect(job.valid?).to eq true;
      end

      it '16文字で弾かれること' do
        job.amount = Faker::Number.number(digits:16)
        expect(job.valid?).to eq false;
      end
    end
  end
  
end


