class MyBookingsController < ApplicationController
  def show
    @my_booking = Booking.find(params[:id])
  end

  def index
    @my_bookings = current_user.bookings
  end

  def destroy
  end
end
