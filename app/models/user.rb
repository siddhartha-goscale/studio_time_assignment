class User < ApplicationRecord


 # Associations
  has_many :studios
  has_many :bookings
  has_one :picture, as: :imageable
  # Validations
  validates :firstname, :lastname,:bio, :contact, presence: true

validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/ }


end
