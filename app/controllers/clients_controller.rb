class ClientsController < ApplicationController
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
    @client.save
    redirect_to clients_path
  end

  def edit    
  end

  def update
    @client.assign_attributes(strong_params)
    @client.update(strong_params)
    @client.save
    redirect_to clients_path
  end

  private
  
  def find_client
    @client = Client.find_by(id: params[:id])
  end

  def strong_params
    params.require(:client).permit(:name, :email, :phone_number)
  end
  
end
