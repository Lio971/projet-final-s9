class UserMailer < ApplicationMailer
    default from: ENV['MAILJET_SENDER']
    #ça sera là qu'il faudra faire la méthode du mail à envoyer après paiement
    def purchase_email(user)
        @user = user 
        mail(to:@user.email, subject: 'Votre paiement a été accepté !')
    end
end