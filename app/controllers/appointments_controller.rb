class AppointmentsController < ApplicationController
  
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find_by(id: params[:id])
  end

end
