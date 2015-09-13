class User < ActiveRecord::Base
  has_many :favourites, dependent: :destroy
  has_many :activities, through: :favourites

  validates :first_name, presence: true
  # should validate email as well
end
