class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :contact_number
      t.string :email_id
      t.string :password_digest
      t.timestamps
    end
  end
end
