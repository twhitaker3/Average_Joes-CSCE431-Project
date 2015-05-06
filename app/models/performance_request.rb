class PerformanceRequest < ActiveRecord::Base

 attr_accessible :start_at, :end_at, :description, :email, :first_name, :last_name, :location, :organization, :number, :padr_line1, :padr_line2, :p_city, :p_state, :p_zip, :status, :kind, :dress, :adr_line1, :adr_line2, :city, :state, :zip

 validates :first_name, :presence => true
 validates :last_name, :presence => true
 validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
 validates :number, format: { with: /\d{3}-\d{3}-\d{4}/, message: "Should be in form ddd-ddd-dddd" } , :allow_blank => true
 validates :location, :presence => true
 validates :start_at, :presence => true
 validates :description, :presence => true
 validates :kind, :presence => true
 validates :dress, :presence => true 
 validates :adr_line1, :presence => true
 validates :city, :presence => true
 validates :state, :presence => true
 validates_format_of :p_zip, :with => /^\d{5}(-\d{4})?$/, :message => "should be in the form 12345 or 12345-1234", :allow_blank => true
 validates_format_of :zip, :with => /^\d{5}(-\d{4})?$/, :message => "should be in the form 12345 or 12345-1234"

 has_event_calendar

end
