class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event
  after_create :send_participation_email
  
  
  
  private

  def send_participation_email
    EventMailer.participation_email(event.user, user, event).deliver_now
  end

end
