class RemoveColumnRatings < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :ratings
    add_column :reviews, :rating, :integer
  end
end
