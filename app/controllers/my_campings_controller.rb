class MyCampingsController < ApplicationController
  def show
    @camping = Camping.find(params[:id])
  end

  def index
    @received_bookings = current_user.received_bookings
  end

  def destroy

  end

  def edit
  end

  def update
  end


end
