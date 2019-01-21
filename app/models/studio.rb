
class Studio < ApplicationRecord


 # Associations
  belongs_to :user
  has_many :pictures, as: :imageable
  # Validations
  validates :name, :details,:minimum_booking,  presence: true
  

 

end
