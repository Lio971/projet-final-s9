class Order < ApplicationRecord
	has_many :items ,through: :cart
	belongs_to: user
end
