class BookingsController < ApplicationController
  def create
    booking = Booking.new(booking_params)

    if booking.save
      flash.now[:notice] = "Successfully booked!"
    else
      flash.now[:notice] = "Oops, something went wrong. Please try again"
    end
  end

  def booking_params
    params[:event][:user_id] = session[:user_id]
    params.require(:event).permit(:user_id, :event_id)
  end
end
