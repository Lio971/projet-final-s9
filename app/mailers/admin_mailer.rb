class AdminMailer < ApplicationMailer
    default from: ENV['MAILJET_SENDER']
# email after purchase for admin to inform order
    def customer_purchase_email(user)
        @user = user 
        mail(to:ENV['MAILJET_SENDER'], subject: 'Une commande à préparer a été effectué !')
    end
end
