class UserMailer < ApplicationMailer
  default from: 'no-reply@eventbrite.com'

  def welcome_email(user)
    @user = user
    @url = 'http://eventbrite.com'
    mail(to: @user.email, subject: 'Bienvenue chez nous !')
  end


  def attendance_email(event, user)
    @event = event
    @user = user
    mail(to: @event.user.email, subject: 'Nouvelle Participation à Votre Événement')
  end

end
