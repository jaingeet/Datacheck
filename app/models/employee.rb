class Employee < ActiveRecord::Base
  has_secure_password
 validates  :first_name, :presence => true 
validates :contact_number, :presence => true
validates :email_id, :presence => true, :uniqueness => true
validates :password, :confirmation => true, length: {in: 6..20}
validates :password_confirmation, :presence => true

end
