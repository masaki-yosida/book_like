class User < ApplicationRecord
  # Devise modules...
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # New attributes
  attr_accessor :username, :favorite_word

  validates :email, presence: false
end