class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.string :password
      t.string :confirm_password
      t.string :address
      t.integer :postcode
      t.boolean :activated, :null => false, :default => true

      t.timestamps
    end
  end
end
