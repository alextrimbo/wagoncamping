class BookingsController < ApplicationController
  before_action :authenticate_user!

  def new

  end

  def create

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
