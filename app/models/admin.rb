class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model

#validates_presence_of :invitation_id, :message => 'is required'
#validates_uniqueness_of :invitation_id

  has_many :sent_invitations, :class_name => 'Invitation', :foreign_key => 'sender_id'
  belongs_to :invitation

  before_create :set_invitation_limit
           attr_accessible :email, :password, :password_confirmation, :remember_me, :invitation_token
  # attr_accessible :title, :body

def invitation_token
  invitation.token if invitation
end

def invitation_token=(token)
  self.invitation = Invitation.find_by_token(token)
end

private

def set_invitation_limit
  self.invitation_limit = 20
end
end
