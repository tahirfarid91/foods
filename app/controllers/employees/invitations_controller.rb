class Employees::InvitationsController < Devise::InvitationsController

  def after_invite_path_for(resource)
    admin_employees_path
  end
  
end