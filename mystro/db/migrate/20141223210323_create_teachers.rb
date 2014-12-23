class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :location_id
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
