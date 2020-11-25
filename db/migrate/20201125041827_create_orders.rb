class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :full_name
      t.text :shipping_address
      t.decimal :phone

      t.timestamps
    end
  end
end
