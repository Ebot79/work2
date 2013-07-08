class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_name
      t.string :priority
      t.date :work_order_dates
      t.string :job_type
      t.text :description_of_work
      t.date :bill_date
      t.date :paid_date
      t.float :labor
      t.float :materials

      t.timestamps
    end
  end
end
