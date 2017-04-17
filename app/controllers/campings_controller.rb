class CampingsController < ApplicationController
  before_action :set_camping, only:[:show, :edit, :update]


  def index
    @campings = current_user.campings
  end

  def show
  end

  def new
    @camping = Camping.new
  end

  def create
    @camping = Camping.new(camping_params)
    @camping.save
    redirect_to campings_path(@camping)
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private


  def set_camping
    @camping = Camping.find(params[:id])
  end

  def camping_params
   params.require(:camping).permit(
     :camping_name, :description,
     :rules, :pricing, :direction)
  end

end
