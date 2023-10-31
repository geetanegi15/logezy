class CreateBusinessUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :business_units do |t|
      t.references :client, null: false, foreign_key: true
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :country_code
      t.string :email

      t.timestamps
    end
  end
end
