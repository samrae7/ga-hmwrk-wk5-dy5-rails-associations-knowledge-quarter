class RemoveNameFromFavourites < ActiveRecord::Migration
  def change
    remove_column :favourites, :name
  end
end
