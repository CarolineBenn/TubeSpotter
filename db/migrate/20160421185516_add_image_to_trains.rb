class AddImageToTrains < ActiveRecord::Migration
  def change
    add_column :trains, :image, :text
  end
end
