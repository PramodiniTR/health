class ClientsController < ApplicationController
  before_action :set_client, only: %i[ show update destroy ]
    
    def index
      @clients = Client.all

      render json: @clients
    end
  
    def show
      render json: @client
    end
  
    def create
      @client = Client.new(client_params)
  
      if @client.save
        render json: @client, status: :created, location: @client
      else
        render json: @client.errors, status: :unprocessable_entity
      end
    end
  
    def update
      if @client.update(client_params)
        render json: @client
      else
        render json: @client.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @client.destroy
      render json: { message: 'client deleted.' }
    end
  
    private

    def set_client
        @client = Client.find(params[:id])
    end
  
    def client_params
        params.require(:client).permit(:client_id, :client_name, :description, :client_phone, :client_email, :client_primary_contact, :created_by, :updated_by)
    end
end
