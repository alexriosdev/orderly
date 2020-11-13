class AppointmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_appointment, only: [:show, :edit, :update]
  
  def index
    @user = current_user
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
    @appointment.user_id = current_user.id
    if @appointment.valid?
      @appointment.save
      redirect_to appointment_path(@appointment)
    else
      flash[:errors] = @appointment.errors.full_messages
      redirect_to new_appointment_path
    end
  end

  def edit
    @clients = Client.all
  end

  def update
    @appointment.assign_attributes(strong_params)
    if @appointment.valid?
      @appointment.update(strong_params)
      redirect_to appointment_path(@appointment)
    else
      flash[:errors] = @appointment.errors.full_messages
      redirect_to edit_appointment_path
    end
  end

  private

  def find_appointment
    @appointment = Appointment.find_by(id: params[:id])
  end

  def strong_params
    params.require(:appointment).permit(:start_time, :end_time, :purpose, :message, :client_id)
  end

end