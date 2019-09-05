class AdminMailer < ApplicationMailer
    default from: ENV['MAILJET_SENDER']
# email after purchase for admin to inform order
    def customer_purchase_email(user)
        @user = user 
        mail(to:ENV['MAILJET_SENDER'], subject: 'Une commande à préparer a été effectué !')
    end
		
		class UserMailer < ApplicationMailer
			default from: 'no-reply@monsite.fr'
		 
			def welcome_email(user)
				#on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
				@user = user 
		
				#on définit une variable @url qu'on utilisera dans la view d’e-mail
				@url  = 'http://monsite.fr/login' 
		
				# c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
				mail(to: @user.email, subject: 'Bienvenue chez nous !') 
			end
		end



	end
