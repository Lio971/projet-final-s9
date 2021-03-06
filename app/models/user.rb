class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_one :cart
         has_many :items
         belongs_to :user, optional: true
         has_many :orders

         def purchase_send
        UserMailer.purchase_email(self).deliver_now
         end

         def customer_purchase_send
          AdminMailer.customer_purchase_email(self).deliver_now
         end
end
