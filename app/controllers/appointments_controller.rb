class AppointmentsController < ApplicationController
  
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find_by(id: params[:id])
  end

  def new
    @appointment = Appointment.new
    @employees = Employee.all
    @clients = Client.all
  end

  def create
    @appointment = Appointment.new(strong_params)
    @appointment.admin_id = Admin.first
    @appointment.save
    redirect_to admin_path(Admin.first)
  end

  private

  def strong_params
    params.require(:appointment).permit(:appointment_time, :purpose, :message, :employee_id, :client_id)
  end

end
