class Contact < ActiveRecord::Base
  attr_accessible :company, :email, :first_name, :last_name, :phone
  
has_many :jobs
  
end
