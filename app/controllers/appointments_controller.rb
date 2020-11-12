class AppointmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_appointment, only: [:show, :edit, :update]
  
  def index
    # @appointments = Appointment.all
    @appointments = current_user.appointments.where(user_id: current_user)
  end

  def show    
  end

  def new
    @appointment = Appointment.new
    @clients = Client.all
  end

  def create
    @appointment = Appointment.new(strong_params)
    # @appointment.user_id = User.first.id
    @appointment.user_id = current_user.id
    @appointment.save
    redirect_to appointments_path
    # redirect_to user_path(User.first.id)
  end

  def edit
    @clients = Client.all
  end

  def update
    @appointment.assign_attributes(strong_params)
    @appointment.update(strong_params)
    @appointment.user_id = User.first.id
    @appointment.save
    redirect_to user_path(User.first.id)
  end

  private

  def find_appointment
    @appointment = Appointment.find_by(id: params[:id])
  end

  def strong_params
    params.require(:appointment).permit(:start_time, :end_time, :purpose, :message, :client_id)
    # params.require(:appointment).permit(:start_time, :end_time, :purpose, :message)
  end

end
