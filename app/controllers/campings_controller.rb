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
    @camping = current_user.campings.new(camping_params)
    if @camping.save
      redirect_to camping_path(@camping)
    else
      render 'new'
    end
  end

  def update
  end


  def edit
   current_user.id == @camping.user.id
  end

  def update
    @camping.update(camping_params)

    redirect_to camping_path(@camping), notice: "Updated..."

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
