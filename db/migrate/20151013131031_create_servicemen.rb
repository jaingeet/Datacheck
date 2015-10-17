class CreateServicemen < ActiveRecord::Migration
  def change
    create_table :servicemen do |t|
		t.string :first_name
		t.string :last_name
    	t.string :contact_number
       t.string :email_id
	   t.string :location
      t.timestamps
    end
  end
end
