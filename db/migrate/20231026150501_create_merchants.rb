class CreateMerchants < ActiveRecord::Migration[7.0]
  def change
    create_table :merchants do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.string :password
      t.string :confirm_password
      t.string :address
      t.integer :postcode

      t.timestamps
    end
  end
end
