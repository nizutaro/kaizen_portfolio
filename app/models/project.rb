class Project < ApplicationRecord
  belongs_to :user
  
  belongs_to :job
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  validates :name, presence: true;
  validates :content, presence: true;
  validates :total_amount, presence: true;
  validates :total_amount, numericality: true;
  validates :reducation_time,numericality: true;
  validates :reducation_time, presence: true;
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

def reducation
  amount = self.reducation_time * ( self.job.amount / 60)
  if self.reducation_time >= 60 
        hour = self.reducation_time / 60
        min = self.reducation_time  % 60
        return "#{hour}時間#{min}分 #{amount}円"
    else
        min = self.reducation_time
        return "#{min}分 #{amount}円"
    end
end

def reducation_month
  amount = self.reducation_time * ( self.job.amount / 60) * self.number_of_month
  if (self.number_of_month * self.reducation_time) >= 60 
      hour = self.number_of_month * self.reducation_time / 60
      min = self.number_of_month * self.reducation_time  % 60
      return "#{hour}時間#{min}分 #{amount}円"
    else
      min = self.number_of_month * self.reducation_time
      return ":#{min}分 #{amount}円"
  end
end

def reducation_year
  amount = self.reducation_time * ( self.job.amount / 60) * self.number_of_month * 12
  if (self.number_of_month * self.reducation_time * 12)  >= 60 
        hour = self.number_of_month * self.reducation_time * 12 / 60
        min = self.number_of_month * self.reducation_time * 12  % 60
        return "#{hour}時間#{min}分 #{amount}円"
      else
        min = self.number_of_month * self.reducation_time * 12
        return "#{min}分 #{amount}円"
    end
end

def full_name
  return self.user.family_name + self.user.first_name 
end


  paginates_per 5
  enum status: {"アイデア募集中":0, "アクション中":1, "未達成":2, "達成":3}
end
