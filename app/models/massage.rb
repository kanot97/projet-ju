class Massage < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :time, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
