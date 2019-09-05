class Order < ApplicationRecord
	has_many :items,through: carts
	belongs_to: user
end
