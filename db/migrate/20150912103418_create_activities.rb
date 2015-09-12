class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :venue
      t.text :description
      t.string :image_url
      t.string :site_url

      t.timestamps null: false
    end
  end
end
