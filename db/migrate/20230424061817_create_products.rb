class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :overall_rating, precision: 2, scale: 1
      t.string :image_url

      t.timestamps
    end
  end
end
