class Cart < ApplicationRecord
    belongs_to :user
    has_many :items

    validates :quantity, numericality: true { :equal_to => 1 }
#in item model : has_many :carts

end
