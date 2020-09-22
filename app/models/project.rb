class Project < ApplicationRecord
  belongs_to :user
  
  belongs_to :job
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  validates :name, presence: true;
  validates :content, presence: true;
  validates :total_amount, presence: true;
  validates :total_amount, numericality: true

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  def reducation
    (reducation_hour * 60) + (reducation_minutes)
  end
  paginates_per 5
  enum status: {"アイデア募集中":0, "アクション中":1, "未達成":2, "達成":3}
end
