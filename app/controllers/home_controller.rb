class HomeController < ApplicationController
  def index
    if employee_signed_in? 
      render 'home/index'
    else
      redirect_to new_employee_session_path 
    end 
  end
end