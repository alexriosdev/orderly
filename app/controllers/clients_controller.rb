class ClientsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_client, only: [:show, :edit, :update]

  def index
    @clients = Client.all
  end

  def show    
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(strong_params)
    if @client.valid?
      @client.save
      redirect_to client_path(@client)
    else
      flash[:errors] = @client.errors.full_messages
      redirect_to new_client_path
    end
  end

  def edit
  end

  def update
    @client.assign_attributes(strong_params)
    if @client.valid?
      @client.update(strong_params)   
      redirect_to client_path(@client)
    else
      flash[:errors] = @appointment.errors.full_messages
      redirect_to edit_appointment_path
    end
  end

  private
  
  def find_client
    @client = Client.find_by(id: params[:id])
  end

  def strong_params
    params.require(:client).permit(:name, :email, :phone_number)
  end
  
end