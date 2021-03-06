class CampingsController < ApplicationController
  before_action :set_camping, only:[:show, :edit, :update, :destroy]


  def index
    @campings = Camping.where.not(latitude: nil, longitude: nil)
  end

  def show
  end

  def new
    @camping = Camping.new
  end

  def create
    @camping = current_user.campings.new(camping_params)
    if @camping.save
      CampingMailer.creation_confirmation(@camping).deliver_now
      redirect_to my_campings_path
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
    camping = Camping.find(params[:id])
    camping_name = camping.camping_name

    camping.destroy

    redirect_to my_campings_path, notice: "#{camping_name} was destroyed."
  end


  private


  def set_camping
    @camping = Camping.find(params[:id])
  end

  def camping_params
   params.require(:camping).permit(
     :camping_name, :description,
     :rules, :pricing, :direction, :photo)
  end

end
