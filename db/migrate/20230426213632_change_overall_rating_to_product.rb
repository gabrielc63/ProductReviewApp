class ChangeOverallRatingToProduct < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :overall_rating, :integer, limit: 1, default: 0
  end
end
