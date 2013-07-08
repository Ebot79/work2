class Location < ActiveRecord::Base
  attr_accessible :city, :location_name, :state, :street, :zip

has_many :jobs
 
  
  
end
