ActiveAdmin.register Employee do
  
  permit_params :first_name, :last_name, :email, :encrypted_password, :cell, :gender, :age, :date_of_joining, :address, :cnic, :designation, :resturant_id

  index do 
    selectable_column
    column :id
    column :first_name
    column :last_name
    column :cell
    column :designation
    column :resturant_id
    column :email
    column :created_at
    column :updated_at
    actions
   end

    filter :id
    filter :first_name
    filter :last_name
    filter :cell
    filter :designation
    filter :resturant_id
    filter :email
    filter :created_at
    filter :updated_at
 
end
