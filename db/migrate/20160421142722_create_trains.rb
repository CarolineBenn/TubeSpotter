class CreateTrains < ActiveRecord::Migration
  def change
    create_table :trains do |t|
      t.string :stock
      t.string :line
      t.string :location
      t.integer :platform

      t.timestamps null: false
    end
  end
end
