class ReceivedBookingsController < ApplicationController
  def index
    @received_bookings = current_user.received_bookings.undeclined
  end

  def show
    @received_booking = current_user.received_bookings.find(params[:id])
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "Accepted"
    @booking.save
    redirect_to my_campings_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "Declined"
    @booking.save
    redirect_to my_campings_path
  end

end
