class Order < ApplicationRecord
    belongs_to :user
    has_many :cart_items, dependent: :destroy


    enum order_states: {
        "Canceled" => 1,
        "In Progress" => 2,
        "Ready to Ship" => 3,
        "Dispached" => 4,
        "Completed" => 5
      }

    def add_cart_items_from_cart(cart)
        cart.cart_items.each do |item|
            cart_items << item
        end
    end
end
