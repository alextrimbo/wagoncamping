class BookingsController < ApplicationController
  before_action :authenticate_user!

  def new
    camping = Camping.find(params[:camping_id])
    today = Date.today
    reservations = camping.booking.where("start_date >= ? OR end_date >= ?", today, today)

  end

  def create
    @booking = current_user.booking.create(booking_params)

    redirect_to @booking.camping, notice: "Your reservation has been created..."
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

  def booking_params
      params.require(:reservation).permit(:start_date, :end_date, :price, :total, :room_id)
  end

end
