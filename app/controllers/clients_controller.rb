class ClientsController < ApiController
    def index
      @client = Client.all
      render json: @client, each_serializer: ClientSerializer
    end
  
    def create
      @client = Client.new(client_params)
      @client.save
  
      render json: @client
    end
  
    def show
      @client = Client.find(params[:id])
      render json: @client
  
    end
  
    def update
      @client = Client.find(params[:id])
      @client.update(client_params)
      render json: @client
      
    end
  
    def destroy
      @client = Client.find(params[:id])
      @client.delete
      render json: "record delete successfully"
      
    end
    
    private
    def client_params
      params.require(:client).permit(:first_name, :last_name, :email, :password, :confirm_password, :address, :postcode, :phone_number, :activated)
    end
  
end
