class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         def purchase_send 
        UserMailer.purchase_email(self).deliver_now
         end

         def customer_purchase_send
          AdminMailer.customer_purchase_email(self).deliver_now
         end
				 
				 class User < ApplicationRecord
					after_create :welcome_send
				
					def welcome_send
						UserMailer.welcome_email(self).deliver_now
					end
				
				end




				end
