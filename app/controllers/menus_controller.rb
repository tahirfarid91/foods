class MenusController < ApplicationController
  def index
    if employee_signed_in? 
       @menus = Menu.all
    else
      redirect_to new_employee_session_path 
    end
  end

  def new
    if employee_signed_in? 
      @menu = Menu.new
   else
     redirect_to new_employee_session_path 
   end
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
