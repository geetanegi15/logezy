class BusinessUnitsController < ApiController
    def index
        @business_unit = BusinessUnit.all
        render json: @business_unit
      end
    
      def create
        @business_unit = BusinessUnit.new(business_unit_params)
        @business_unit.save
    
        render json: @business_unit
      end
    
      def show
        @business_unit = BusinessUnit.find(params[:id])
        render json: @business_unit
    
      end
    
      def update
        @business_unit = BusinessUnit.find(params[:id])
        @business_unit.update(business_unit_params)
        render json: @business_unit
        
      end
    
      def destroy
        @business_unit = BusinessUnit.find(params[:id])
        @business_unit.delete
        render json: "record delete successfully"
        
      end
      
      private
      def business_unit_params
        params.require(:business_unit).permit(:client_id, :name, :address, :phone_number, :country_code, :email, :activated)
      end
end
