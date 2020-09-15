class CookingsController < ApplicationController
  # before_action :move_to_index, except:  [:index, :search, :show]

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

  def show
    @cooking = Cooking.find(params[:id])
  end

  def search
    @cookings = Cooking.search(params[:keyword])
  end


  private

  def cooking_params
    params.require(:cooking).permit(:image, :cooking_name, :text, :material1, :quantity1, :material2, :quantity2, :material3, :quantity3, :material4, :quantity4, :material5, :quantity5, :material6, :quantity6, :material7, :quantity17, :material8, :quantity8, :material9, :quantity9, :material0, :quantity0, :name)#.merge(user_id: current_user.id)
  end

  # def move_to_index

  #   unless user_signed_in?
  #     redirect_to action: :index
  #   end
  # end
end
