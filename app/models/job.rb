class Job < ApplicationRecord
  has_many :projects, dependent: :destroy
  
  validates :name, length: {maximum: 30}
  validates :amount, presence: true
  validates :amount, length: { maximum: 15}
end
