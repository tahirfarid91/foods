# frozen_string_literal: true

class Employees::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  # end

  # POST /resource/sign_in
  # def create
  #   employee = Employee.find_by(email: params[:email])
  #   if employee.present?
  #       session[:employee_id] = employee.id
  #       redirect_to home_path, notice: "Logged in successfully"
  #   else
  #      flash[:alert] = "Invalid email or password"
  #      redirect_to new_employee_session_path
  #   end
  # end

  # # DELETE /resource/sign_out
  # def destroy
  #   session[:employee_id] = nil
  #   redirect_to new_employee_session_path, notice: "Logged out"
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
