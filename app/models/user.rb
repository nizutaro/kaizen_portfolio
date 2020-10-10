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
      where(['(family_name || farst_name) like ?', "%#{search}%"])
    else
      all
    end
  end
  def full_name
    return self.family_name + self.farst_name
  end
end
