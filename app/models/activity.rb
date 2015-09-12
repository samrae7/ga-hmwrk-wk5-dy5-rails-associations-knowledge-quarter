class Activity < ActiveRecord::Base
  has_many :favourites
  has_many :users, through: :favourites
end
