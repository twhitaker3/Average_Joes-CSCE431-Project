class PerformanceRequest < ActiveRecord::Base

 attr_accessible :date, :description, :email, :first_name, :last_name, :location, :organization, :status, :kind, :dress, :adr_line1, :adr_line2, :city, :state, :zip

 validates :first_name, :presence => true
 validates :last_name, :presence => true
 validates :email, :presence => true
 validates :location, :presence => true
 validates :date, :presence => true
 validates :description, :presence => true
 validates :kind, :presence => true
 validates :dress, :presence => true 
 validates :adr_line1, :presence => true
 validates :city, :presence => true
 validates :state, :presence => true
 validates :zip, :presence => true

end
