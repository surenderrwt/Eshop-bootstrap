class AddUserToOrder < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :user, foreign_key: true
    add_column :orders, :order_status, :integer
  end
end
