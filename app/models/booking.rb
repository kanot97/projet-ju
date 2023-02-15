class Booking < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :massage, dependent: :destroy
end
