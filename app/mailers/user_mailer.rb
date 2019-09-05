class UserMailer < ApplicationMailer
    default from: ENV['MAILJET_SENDER']
#after purchase e-mail for customer
    def purchase_email(user)
        @user = user 
        mail(to:@user.email, subject: 'Votre paiement a été accepté !')
    end
end