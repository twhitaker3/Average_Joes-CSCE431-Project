class PerformanceRequest < ActiveRecord::Base

 attr_accessible :date, :description, :email, :first_name, :last_name, :location, :organization, :status

 validates :first_name, :presence => true
 validates :last_name, :presence => true
 validates :email, :presence => true
 validates :location, :presence => true
 validates :date, :presence => true
 validates :description, :presence => true

end
