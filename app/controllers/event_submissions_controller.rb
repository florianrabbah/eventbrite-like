class EventSubmissionsController < ApplicationController

 def index
  @event_submissions = EventSubmission.all
 end
 
 def show 
 end
 
 def edit
 end

 def update
 end




 def validate
  @event_submission = EventSubmission.find(params[:id])
  @event_submission.event.update(validated: true)
  @event_submission.destroy
  # Rediriger vers la liste des événements à valider avec un message de succès
 end
end
