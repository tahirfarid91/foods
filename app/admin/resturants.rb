ActiveAdmin.register Resturant do

  permit_params :name, :status

index do
  selectable_column
    column :id
    column :name
    column :status
    actions
  end
end