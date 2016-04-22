class AddPlatformAndLocationToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :line, :string
    add_column :posts, :location, :string
    add_column :posts, :platform, :integer
  end
end
