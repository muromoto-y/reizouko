class CookingsController < ApplicationController

  def index
    @cookings = Cooking.all.order(created_at: :desc)
  end

  def new
    @cooking = CookingsTag.new
  end

  def create
    @cooking = CookingsTag.new(cooking_params)
    if @cooking.valid?
      @cooking.save
      return redirect_to root_path
    else
      render "new"
    end
  end

  private

  def cooking_params
    params.require(:cookings_tag).permit(:cooking_name, :text, :material, :name).merge(user_id: current_user.id)
  end

end
