class AddFactsToTrain < ActiveRecord::Migration
  def change
    add_column :trains, :facts, :text
  end
end
