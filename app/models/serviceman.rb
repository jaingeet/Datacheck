class Serviceman < ActiveRecord::Base

validates  :first_name, :presence => true 
validates :contact_number, :presence => true
validates :email_id, :presence => true, :uniqueness => true
end
