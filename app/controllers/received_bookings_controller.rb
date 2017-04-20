class ReceivedBookingsController < ApplicationController
  def index
    @received_bookings = current_user.received_bookings
  end

  def show
    @received_booking = current_user.received_bookings.find(params[:id])
  end

  def accept
  end

  def decline
  end

end
