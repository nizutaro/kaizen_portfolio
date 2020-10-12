class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable

  has_many :projects, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  attachment :image
  validates :family_name, presence: true, length: { maximum: 15 }
  validates :farst_name, presence: true, length: { maximum: 15 }

  def self.search(search)
    if search
      if Rails.env.production?
        #本番環境Mysql2の場合
        where(['concat(family_name, farst_name) like ?', "%#{search}%"])
      else
        #テスト環境sqlite3の場合
        where(['(family_name || farst_name) like ?', "%#{search}%"])
      end
    else
      all
    end
  end
  def full_name
    return self.family_name + self.farst_name
  end

  def user_image
    unless self.image_id.nil?
      @image_url = "https://image-files-resize-niduka.s3-ap-northeast-1.amazonaws.com/store/" + self.image_id + "-thumbnail."
    else 
      @image_url = "https://image-files-original-niduka.s3-ap-northeast-1.amazonaws.com/no_image.jpg"  
    end
  end

  def total_reducation_year
    #
  end
end
