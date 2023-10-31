class CreateVacancies < ActiveRecord::Migration[7.0]
  def change
    create_table :vacancies do |t|
      t.references :client, null: false, foreign_key: true
      t.references :business_units, null: false, foreign_key: true
      t.references :shifts, null: false, foreign_key: true
      t.references :jobs, null: false, foreign_key: true
      t.date :dates, default: [], array: true 
      t.integer :staff_required
      t.text :notes
      
      t.timestamps
    end
  end
end
