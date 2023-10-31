ActiveAdmin.register Merchant do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :email, :password, :confirm_password, :first_name, :last_name, :phone_number, :address, :postcode

  # or
  #
  # permit_params do
  #   permitted = [:email, :password]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do 
    selectable_column 
    id_column  
    column :first_name
    column :last_name
    column :email
    column :password
    column :confirm_password
    column :phone_number
    column :address
    column :postcode  

    actions

    end
end