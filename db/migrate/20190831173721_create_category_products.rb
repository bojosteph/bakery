class CreateCategoryProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :category_products do |t|
      t.integer :product_id, null: false
      t.integer :category_id, null: false

      t.timestamps
    end
  end
end
