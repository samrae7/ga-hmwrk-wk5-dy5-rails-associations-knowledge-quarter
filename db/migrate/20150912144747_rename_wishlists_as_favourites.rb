class RenameWishlistsAsFavourites < ActiveRecord::Migration
  
  def self.up
    rename_table :wishlists, :favourites
  end

  def self.down
    rename_table :favourites, :wishlists
  end

end
