class PerformanceRequest < ActiveRecord::Base

 attr_accessible :address_attributes, :date, :description, :email, :first_name, :last_name, :location, :organization, :status, :kind, :dress, :performance_request_id

 has_one :address
 accepts_nested_attributes_for :address
 validates :first_name, :presence => true
 validates :last_name, :presence => true
 validates :email, :presence => true
 validates :location, :presence => true
 validates :date, :presence => true
 validates :description, :presence => true
 validates :kind, :presence => true
 validates :dress, :presence => true

end
