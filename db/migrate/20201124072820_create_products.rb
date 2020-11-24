class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :count
      t.text :small_desc
      t.text :description
      t.decimal :price, precision: 10, scale: 2
      t.boolean :available
      t.string :image

      t.timestamps
    end
    add_index :products, :name
  end
end
