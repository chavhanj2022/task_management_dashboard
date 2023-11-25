class Task < ApplicationRecord
  
  belongs_to :user, optional: true  # Allow tasks without an assigned user

  enum status: [:pending, :in_progress, :completed] # Add more statuses as needed

  validates :title, presence: true
  validates :description, presence: true
  validates :deadline, presence: true
end
