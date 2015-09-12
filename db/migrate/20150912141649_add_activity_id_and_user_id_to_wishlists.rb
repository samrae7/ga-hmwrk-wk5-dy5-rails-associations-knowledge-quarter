class AddActivityIdAndUserIdToWishlists < ActiveRecord::Migration
  def change
    add_reference :wishlists, :activity, index: true, foreign_key: true
    add_reference :wishlists, :user, index: true, foreign_key: true
  end
end
