ActiveAdmin.register Employee do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :first_name, :last_name, :email, :cell, :gender, :age, :date_of_joining, :address, :cnic, :designation, :resturant_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:first_name, :last_name, :email, :cell, :gender, :age, :date_of_joining, :address, :cnic, :designation, :Resturant_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
