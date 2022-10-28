class SessionsController < ApplicationController

  def login
  end

  def create
    employee = Employee.find_by(email: params[:email])
    if employee.present?
        session[:employee_id] = employee.id
        redirect_to home_path, notice: "Logged in successfully"
    else
       flash[:alert] = "Invalid email or password"
       redirect_to employee_path
    end
  end

  def destroy
    session[:employee_id] = nil
    redirect_to employee_path, notice: "Logged out"
  end
end