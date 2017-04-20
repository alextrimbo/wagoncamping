class ReceivedBookingsController < ApplicationController
  def index
    @received_bookings = Received_booking.all
  end

  def show
    @received_booking = Received_booking.find(params[:id])
  end
end
