class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name, :limit => 35
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip, :limit => 5
      t.string :school
      t.integer :years

      t.timestamps null: false
    end
  end
end
