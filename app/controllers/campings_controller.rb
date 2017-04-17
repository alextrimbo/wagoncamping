class CampingsController < ApplicationController
  def index
    @campings = current_user.campings
  end

  def show
  end

  def new
    @camping = current_user.camping.new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
