class AddPointsToTrains < ActiveRecord::Migration
  def change
    add_column :trains, :points, :integer
  end
end
