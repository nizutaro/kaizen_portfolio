class Job < ApplicationRecord
  belongs_to :project
  
  validates :name, length: {maximum: 30}
  validates :amount, presence: true
  validates :amount, length: { maximum: 15}
end
