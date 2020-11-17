class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    event = Event.new(event_params)

    if event.save
      redirect_to '/events/index'
    else
      redirect_to '/events/new'
    end
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:event])
    @bookings = Booking.all
    @has_booking = Booking.find_by(user_id: session[:user_id])
  end

  private

  def event_params
    params[:event][:user_id] = session[:user_id]
    params.require(:event).permit(:user_id, :title, :content, :date)
  end
end
