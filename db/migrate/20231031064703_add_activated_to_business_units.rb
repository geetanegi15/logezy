class AddActivatedToBusinessUnits < ActiveRecord::Migration[7.0]
  def change
    add_column :business_units, :activated, :boolean, :null => false, :default => true
  end
end
