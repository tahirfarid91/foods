class Employees::InvitationsController < Devise::InvitationsController

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:first_name, :last_name, :cell])
  end

end