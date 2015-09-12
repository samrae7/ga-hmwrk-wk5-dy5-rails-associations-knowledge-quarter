class User < ActiveRecord::Base
  has_many :favourites, dependent: :destroy
  has_many :activities, through: :favourites
end
