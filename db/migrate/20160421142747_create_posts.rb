class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :image
      t.string :description
      t.integer :train_id

      t.timestamps null: false
    end
  end
end
