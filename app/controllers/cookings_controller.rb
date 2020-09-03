class CookingsController < ApplicationController

  def index
    @cookings = Cooking.all.order("created_at DESC")
  end

  def new
    @cooking = Cooking.new
  end

  def create
    @cooking = Cooking.new(cooking_params)
    if @cooking.valid?
      @cooking.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def cooking_params
    params.require(:cooking).permit(:image, :cooking_name, :text, :material1, :quantity1, :name)#.merge(user_id: current_user.id)
  end

end
