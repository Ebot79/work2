class Job < ActiveRecord::Base
  attr_accessible :bill_date, :description_of_work, :job_name, :job_type, :labor, :materials, :paid_date, :priority, :work_order_dates, :location_id
  
  belongs_to :location
  belongs_to :contact
end
