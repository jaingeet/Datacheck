class CreateRequestLogs < ActiveRecord::Migration
  def change
    create_table :request_logs do |t|
    	t.string :request_id
		t.string :customer_id
    	t.string :customer_name
        t.string :contact_number
	    t.string :service_category
	    t.string :service_description
	    t.string :address
	    t.string :time_allocated
	    t.string :flag
	    t.string :assigned_to
	    t.string :assigned_by
	    t.timestamps :received_time
	    t.timestamps :assigned_time
	    t.timestamps :completed_time
	    t.string :status
      t.timestamps
    end
  end
end
