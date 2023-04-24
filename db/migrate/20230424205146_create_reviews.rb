class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :reviewer_name
      t.text :body
      t.integer :rating, limit: 1
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
