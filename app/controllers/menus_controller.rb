class MenusController < ApplicationController
  before_action :authenticate_employee!
  
  def index
    @menus = Menu.all
    @categories = Category.all
    @food_items = FoodItem.all
  end

  def new
    @menu = Menu.new
  end

  def show
  end

  def create
    @menu = Menu.new(menu_params)

    if @menu.save
      redirect_to new_menu_path
    else
      render 'new'
    end
  end

  private
    def menu_params
      params.require(:menu).permit(:title, :resturant_id)
    end
end
