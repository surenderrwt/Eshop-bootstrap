class Product < ApplicationRecord
    belongs_to :category
    has_many :cart_items
    before_destroy :ensure_not_referenced_by_any_cart_item

    private
    # ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_cart_item
        unless cart_items.empty?
            errors.add(:base, 'Cart Items present')
            throw :abort
        end
    end
end
