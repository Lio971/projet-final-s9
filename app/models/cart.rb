class Cart < ApplicationRecord
    belongs_to :user 
    has_many :items 
# do something so that user can't buy an item several times on the same cart

#in item model : has_many :carts 

end
