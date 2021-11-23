class Counselor < ApplicationRecord
  # Include default devise modules. Others available are:
  belongs_to :school
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  has_many :messages, as: :sender
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
