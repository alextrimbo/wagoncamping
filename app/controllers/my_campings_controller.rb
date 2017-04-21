class MyCampingsController < ApplicationController
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

end
