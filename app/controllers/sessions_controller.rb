class SessionsController < ApplicationController
  def login
  end

  def create
    employee = Employee.find_by(email: params[:email])
    if employee.present?
        session[:employee_id] = employee.id
        redirect_to root_path, notice: "Logged in successfully"
    else
       flash[:alert] = "Invalid email or password"
       render :login
    end
  end

end