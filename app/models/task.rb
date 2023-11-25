class Task < ApplicationRecord
  paginates_per 10 
  

  belongs_to :user, optional: true  # Allow tasks without an assigned user

  
  validates :title, presence: true
  validates :description, presence: true
  validates :deadline, presence: true
  validates :status, presence: true

  STATUS = ["pending", "completed", "in progress"]

end
