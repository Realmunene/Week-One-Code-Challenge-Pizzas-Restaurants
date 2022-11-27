class RestaurantPizza < ApplicationRecord
    belongs_to :restaurant
    belongs_to :pizza
    validate :price, present: true
    validate :price_range
    def price_range
        if (price > 30 || price < 1)
            errors.add(:price, "must be between 1 and 30")
    end
end
