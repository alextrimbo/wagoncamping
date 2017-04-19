class MyBookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def index
  end

  def destroy
  end
end
