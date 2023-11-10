class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
   
    @event.admin = current_user
    if @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render :new
    end

  end

  def new
    @event = Event.new

  end

  def edit
    @event = Event.find(params[:id])
    
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    if @event.save!
      redirect_to events_path
    else
      render 'edit'
    end
    
  end

  def destroy
    @event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end
 
  private

  def set_event
    @event = Event.find(params[:id])
  end

def event_params
  params.require(:event).permit(:start_date, :duration, :title, :description, :price, :location, :user_id)
end


  

end





