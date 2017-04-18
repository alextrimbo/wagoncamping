class MyCampingsController < ApplicationController
  def show
    @camping = Camping.find(params[:id])
  end

  def index
  end

  def destroy
  end
end
