class AttendancesController < ApplicationController
  
  def index
  
    @attendances = Attendance.all
  end
  def new
    @attendance = Attendance.new

  end

  def create
    @attendance = Attendance.new(attendance_params)
    @event = Event.find(params[:event_id])
    @attendance.event = @event
    @attendance.user = current_user
  
    if @attendance.save
      redirect_to @attendance, notice: 'Attendance was successfully created.'
    else
      render :new
    end
  end

  def edit
    @attendance = Attendance.find(params[:id])
  end
  def show
    @attendance = Attendance.find(params[:id])
  end
  def destroy
  end

private

def attendance_params
  params.require(:attendance).permit(:event_id) # Ajoutez d'autres attributs au besoin
end





end