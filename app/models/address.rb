class Address < ActiveRecord::Base
  belongs_to :performance_request
  attr_accessible :city, :line_1, :line_2, :state, :zip, :performance_request_id
end
