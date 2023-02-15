class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :massages, through: :bookings
  has_many :feedbacks, dependent: :destroy

  validates :email, presence: true, format: { with: /\A[\w+\-.]+@(gmail|yahoo|hotmail|outlook)\.[a-z]+\z/i }

end
