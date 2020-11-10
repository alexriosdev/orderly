class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show, :edit, :update]
  
  def index
    @appointments = Appointment.all
  end

  def show    
  end

  def new
    @appointment = Appointment.new
    @employees = Employee.all
    @clients = Client.all
  end

  def create
    @appointment = Appointment.new(strong_params)
    @appointment.admin_id = Admin.first.id
    @appointment.save
    redirect_to admin_path(Admin.first.id)
  end

  def edit
    @employees = Employee.all
    @clients = Client.all
  end

  def update
    @appointment.assign_attributes(strong_params)
    @appointment.update(strong_params)
    @appointment.admin_id = Admin.first.id
    @appointment.save
    redirect_to admin_path(Admin.first.id)
  end

  private

  def find_appointment
    @appointment = Appointment.find_by(id: params[:id])
  end

  def strong_params
    params.require(:appointment).permit(:start_time, :end_time, :purpose, :message, :employee_id, :client_id)
  end

end
