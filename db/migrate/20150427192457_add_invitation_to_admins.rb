class AddInvitationToAdmins < ActiveRecord::Migration
   def self.up
add_column :admins, :invitation_id, :integer
add_column :admins, :invitation_limit, :integer
end
def self.down
remove_column :admins, :invitation_limit
remove_column :admins, :invitation_id
end
end
