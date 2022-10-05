class DeviseInvitableAddToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :invitation_token, :string
    add_column :employees, :invitation_created_at, :datetime
    add_column :employees, :invitation_sent_at, :datetime
    add_column :employees, :invitation_accepted_at, :datetime
    add_column :employees, :invitation_limit, :integer
    add_column :employees, :invited_by_id, :integer
    add_column :employees, :invited_by_type, :string
    add_index :employees, :invitation_token, unique: true
  end
end
