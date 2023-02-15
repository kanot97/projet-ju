class Feedback < ApplicationRecord
  belongs_to :user
  validates :rating, presence: true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :rating, numericality: { only_integer: true }
  validates :rating, length: { maximum: 5 }
  validates :rating, length: { minimum: 1 }
  validates :rating, numericality: { greater_than_or_equal_to: 1 }
  validates :rating, numericality: { less_than_or_equal_to: 5 }
  validates :rating, inclusion: { in: 1..5 }
end
