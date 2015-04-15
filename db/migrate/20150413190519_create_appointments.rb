class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :date, null: false
      t.references :doctor, null: false, index: true
      t.string :pet, null: false
      t.string :customer, null: false
      t.boolean :reminder
      t.string :reason, null: false
      t.timestamps null: false
    end
  end
end
