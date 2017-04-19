class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_camping, only: [:new, :create]

  def new
    @booking = @camping.bookings.new
  end

  def create
    @booking = @camping.bookings.new(booking_params)
    @booking.price = @camping.pricing
    if @booking.save
      redirect_to my_booking_path(@booking)
    else
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
  end

  def index
  end

  private

  def set_camping
    @camping = Camping.find(params[:camping_id])
  end

  def booking_params
      params.require(:booking).permit(:start_date, :end_date, :camping_id, :user_id)
  end

end
