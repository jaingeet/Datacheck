class SessionsController < ApplicationController
def new
end
def destroy
	session[:session_id] = nil
	redirect_to :new
end
def create
	employee = Employee.find_by_email_id(params[:email_id])
	if employee && employee.authenticate(params[:password])
		byebug
		session[:session_id] =employee.id
		render :hey
		#redirect_to  notice: 'Logged In'
		#redirect_to url_for{:controller => :requests, :action => :new}
	else 
		render :home
end
end
end

