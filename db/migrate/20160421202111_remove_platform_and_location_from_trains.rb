class RemovePlatformAndLocationFromTrains < ActiveRecord::Migration
  def change
    remove_column :trains, :line
    remove_column :trains, :location
    remove_column :trains, :platform
  end
end
