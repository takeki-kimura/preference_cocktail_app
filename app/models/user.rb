class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :preferences
  has_many :cocktails
  has_many :comments

  validates :nickname,    presence: true
end
