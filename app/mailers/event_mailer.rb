class EventMailer < ApplicationMailer
  def participation_email(event_creator, participant, event)
    @event_creator = event_creator
    @participant = participant
    @event = event

    mail(to: @event_creator.email, subject: 'Nouvelle participation à votre événement')
  end
end