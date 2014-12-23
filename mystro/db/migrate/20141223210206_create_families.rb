class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :family_name
      t.integer :location_id
      t.string :email
      t.string :phone
      t.integer :total_balance

      t.timestamps
    end
  end
end
