class ApplicationController < ActionController::Base

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:first_name, :last_name])
  end

  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected

  def authenticate_inviter!
    authenticate_admin_user!(force: true)
  end
  
end