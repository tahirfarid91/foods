ActiveAdmin.register Employee do
  permit_params :first_name, :last_name, :email, :encrypted_password, :cell, :gender, :age, :date_of_joining, :address, :cnic, :designation, :resturant_id

  action_item :view_site do
    link_to "Invite", new_employee_invitation_path
  end

  index do 
    selectable_column
    column :id
    column :first_name
    column :last_name
    column :cell
    column :designation
    column :email
    actions
  end

  show do
    attributes_table do
      row :first_name
      row :last_name
      row :email
      row :resturant_id
      row :created_at
      row :updated_at
      row :invitation_token
      row :invitation_created_at
      row :invitation_sent_at
      row :invitation_accepted_at
      row :invited_by
    end
    active_admin_comments
  end

  form do |f|
    inputs "Details" do
      input :first_name
      input :last_name
      input :email
      input :resturant
      input :encrypted_password
      actions
    end
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
