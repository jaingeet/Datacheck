class EmployeesController < ApplicationController
def index 
 @employee = Employee.all
end 
def new
	@employee  = Employee.new
end 
def show
	@employee = Employee.find(params[:id])
end
def create
	@employee = Employee.new(employee_params)
	if @employee.save
	redirect_to :action => 'show', :id => @employee.id
	else 
	render ('new')
	end
end
def update
	@employee = Employee.find(params[:id])
	if @employee.update_attributes(employee_params)
	redirect_to :action => 'show'
	else 
	render ('edit')
    end
end
def edit 
	@employee = Employee.find(params[:id])
end
def delete 
	@employee = Employee.find(params[:id])
end
def destroy
	@employee = Employee.find(params[:id])
	@employee.destroy
	redirect_to :action => 'index' 
end

private
def employee_params
    params.require(:employee).permit(:first_name, :last_name, :contact_number, :email_id, :password,:password_confirmation)
end
end