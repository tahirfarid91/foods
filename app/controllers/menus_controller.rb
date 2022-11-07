class MenusController < ApplicationController
  def index
    if employee_signed_in? 
       @menus = Menu.all
    else
      redirect_to new_employee_session_path 
    end
  end

  def new
    @menu = Menu.new
  end

  def show
  end

  def create
    @menu = Menu.new(menu_params)

    if @menu.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
    def menu_params
      params.require(:menu).permit(:title, :resturant_id)
    end
end
