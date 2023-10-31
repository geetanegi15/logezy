class MerchantsController < ApiController
  def index
    @merchant = Merchant.all
    render json: @merchant
  end

  def create
    @merchant = Merchant.new(merchant_params)
    @merchant.save

    render json: @merchant
  end

  def show
    @merchant = Merchant.find(params[:id])
    render json: @merchant

  end

  def update
    @merchant = Merchant.find(params[:id])
    @merchant.update(merchant_params)
    render json: @merchant
    
  end

  def destroy
    @merchant = Merchant.find(params[:id])
    @merchant.delete
    render json: @merchant, status: "ok"
    
  end

  def merchant_login
    @merchant = Merchant.where(email: params[:email], password: params[:password])
    if @merchant.present?
      render json: @merchant, each_serializer: MerchantDashboardSerializer
    else
      render json: "please enter correct email and password"
    end
  end

  private
  def merchant_params
    params.require(:merchant).permit(:first_name, :last_name, :email, :password, :confirm_password, :address, :postcode, :phone_number)
  end
end
