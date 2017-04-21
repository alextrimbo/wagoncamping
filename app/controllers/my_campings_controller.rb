class MyCampingsController < ApplicationController
  before_action :set_my_camping, only:[:show, :edit, :update, :destroy]

  def show
    @camping = Camping.find(params[:id])
  end

  def index
    @received_bookings = current_user.received_bookings.undeclined
    @bookings = current_user.my_bookings
  end

  def destroy

  end

 def edit
   current_user.id == @camping.user.id
  end

  def update
    @camping.update(camping_params)

    redirect_to camping_path(@camping), notice: "Updated..."
  end

  def set_my_camping
    @my_camping = Camping.find(params[:id])
  end

end
