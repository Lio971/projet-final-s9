class Cart < ApplicationRecord
    belongs_to :user 
    has_many :items 

#in item model : has_many :carts 

end
