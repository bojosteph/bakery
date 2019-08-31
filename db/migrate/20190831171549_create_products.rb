class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.decimal :price, null: false
      t.string :description, null: false
      t.integer :seller_id, null: false
      t.string :image_url, null: false
      t.boolean :featured, default: false
      t.integer :public_id

      t.timestamps
    end

    add_index :products, :title, unique: true
  end
end
